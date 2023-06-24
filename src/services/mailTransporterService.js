import { createTransport } from "nodemailer";

/**
 * Função que instancia o Transport, implementação
 * necessária para estabelecer um pool com o servidor
 * de email.
 * @method mailTransporter
 * @memberof module:services
 * @returns {Function} Instância Transport do nodemailer.
 */
export const mailTransporter = createTransport({
  host: process.env.NEXT_MAILSERVICE_HOST,
  port: process.env.NEXT_MAILSERVICE_PORT,
  secure: false,
  auth: {
    user: process.env.NEXT_MAILSERVICE_USER,
    pass: process.env.NEXT_MAILSERVICE_PASS,
  },
  logger: process.env.NEXT_DEBUG_SMTP === "true",
});
