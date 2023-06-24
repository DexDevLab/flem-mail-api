# Install dependencies only when needed
FROM --platform=linux/amd64 node:16-alpine AS deps
RUN apk add --no-cache libc6-compat
WORKDIR /app
COPY package.json yarn.lock ./
COPY prisma ./prisma/
# QUANDO USADO O COMANDO YARN DOCKER BUILD, AS VARIÁVEIS PODEM SER
# OBTIDAS AO USAR A LINHA ABAIXO. NO ENTANTO, PARA O GITHUB ACTIONS,
# É NECESSÁRIO QUE AS VARIÁVEIS SEJAM DECLARADAS MANUALMENTE, VIDE
# ABAIXO

# COPY .env.production ./

COPY jsconfig.json ./
RUN yarn install --frozen-lockfile
RUN yarn prisma generate

# Rebuild the source code only when needed
FROM --platform=linux/amd64 node:16-alpine AS builder

WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules

COPY . .

RUN yarn build

# Production image, copy all the files and run next
FROM --platform=linux/amd64 node:16-alpine AS runner
WORKDIR /app

# AO UTILIZAR O GITHUB ACTIONS, AS VARIÁVEIS DEVEM SER
# DECLARADAS MANUALMENTE, AO INVÉS DE OBTIDAS PELO
# .env.production

# ENV NODE_ENV production

# VARIÁVEIS DE AMBIENTE

ENV DATABASE_URL=''
ENV NEXT_PUBLIC_API_FILE_UPLOAD=''
ENV NEXT_PUBLIC_MAILSERVICE_TYPE=''
ENV NEXT_PUBLIC_MAILSERVICE_HOST=''
ENV NEXT_PUBLIC_MAILSERVICE_PORT=''
ENV NEXT_PUBLIC_MAILSERVICE_USER=''
ENV NEXT_PUBLIC_MAILSERVICE_PASS=''


RUN addgroup --system --gid 1001 nextappgroup
RUN adduser --system --uid 1001 nextappuser

COPY --from=builder /app/public ./public
COPY --from=builder /app/package.json ./package.json
COPY --from=builder  /app/prisma /app/prisma

COPY --from=builder --chown=nextappuser:nextappgroup /app/.next/standalone ./
COPY --from=builder --chown=nextappuser:nextappgroup /app/.next/static ./.next/static

USER nextappuser

EXPOSE 3000

ENV PORT 3000

CMD ["node", "server.js"]