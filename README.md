<h1 align="center">FLEM Mail API</h1>
<p align=center><i align="center">API que manipula as requisições e transferências de email das aplicações FLEM</i></p>

<br>

<div align="center">

<a href="https://www.javascript.com"><img src="https://img.shields.io/badge/JavaScript-%23323330.svg?logo=javascript&logoColor=%23F7DF1E" height="22" alt="JavaScript"/></a>
<a href="https://nodejs.org/en/"><img src="https://img.shields.io/badge/node.js-6DA55F?logo=node.js&logoColor=white" height="22" alt="NodeJS"/></a>
<a href="https://nextjs.org"><img src="https://img.shields.io/badge/Next-black?logo=next.js&logoColor=white" height="22" alt="NextJS"/></a>
<a href="https://www.prisma.io"><img src="https://img.shields.io/badge/Prisma-3982CE?logo=Prisma&logoColor=white" height="22" alt="PrismaIO"/></a>
<a href="https://www.microsoft.com/pt-br/sql-server/sql-server-2019"><img src="https://img.shields.io/badge/Microsoft%20SQL%20Sever-CC2927?logo=microsoft%20sql%20server&logoColor=white" height="22" alt="MSSQLServer"/></a>

<a href=""><img src="https://img.shields.io/badge/maintenance-actively--developed-brightgreen.svg" height="22" alt="Maintenance-actively-developed"/></a>
<a href=""><img src="https://img.shields.io/github/last-commit/frtechdev/flem-mail-api" height="22" alt="LastCommit"></a>
<a href=""><img src="https://snyk.io/test/github/frtechdev/flem-mail-api/badge.svg" height="22" alt="Snyk"/></a>

<a href=""><img src="https://img.shields.io/github/repo-size/frtechdev/flem-mail-api" height="22" alt="RepoSize"/></a>
<a href=""><img src="https://img.shields.io/github/languages/code-size/frtechdev/flem-mail-api" height="22" alt="CodeSize"/></a>
<a href=""><img src="https://img.shields.io/github/contributors/frtechdev/flem-mail-api" height="22" alt="Contributors"></a>

<a href=""><img src="https://img.shields.io/github/forks/frtechdev/flem-mail-api" height="22" alt="Fork"></a>
<a href=""><img src="https://img.shields.io/github/release/frtechdev/flem-mail-api.svg" height="22" alt="LatestRelease"></a>
<a href="https://github.com/frtechdev/flem-mail-api/blob/main/LICENSE"><img src="https://img.shields.io/github/license/frtechdev/flem-mail-api" height="22" alt="License"></a>

|| [Conteúdo](#section-conteudo) || [Características](#section-caracteristicas) || [Stack](#section-stack) || [Documentação](#section-documentacao) || [Instruções](#section-instrucoes) ||

|| [Variáveis de Ambiente](#section-vars) || [Notas de versão](#section-changelog) || [Autores](#section-autores) || [Contato](#section-contato) || [Licença](#section-licenca) ||

</div>

<hr>

<a name="section-conteudo">

## Conteúdo

</a>

<br>

API que manipula as requisições e transferências de email das aplicações FLEM.
Tem os seguintes objetivos:

- Fornecer uma API de alta performance e baixo custo computacional que consuma de maneira segura e estável os dados requisitados
- Manipular de maneira independente e com controle integrado dados provenientes dos servidores de arquivo FLEM.

<hr>

<a name="section-caracteristicas">

## Características

</a>

<br>

- Facilita os processos resumindo todas as suas funcionalidades centradas no consumo dos dados sem comprometer a performance.

<hr>

<a name="section-stack">

## Stack

</a>

<br>

- **Linguagem Principal:** [Javascript](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript)
- **Framework Principal:** [Node.js](https://nodejs.org/en/docs/)
- **Framework estrutural:** [Next.js](https://nextjs.org/docs/getting-started)
- **Biblioteca de Conexão ODBC / ORM:** [Prisma.io](https://www.prisma.io)
- **Banco de Dados:** [SQL](https://pt.wikipedia.org/wiki/SQL)
- **Gerenciador de Dependências:** [Yarn](https://yarnpkg.com/getting-started)
- **Bibliotecas:** Para uma lista completa de bibliotecas e dependências nos mais variados escopos, conferir o arquivo [package.json](https://github.com/frtechdev/flem-mail-api/blob/main/package.json).

<hr>

<a name="section-documentacao">

## Documentação

</a>

<br>

- [Manual de Especificações de UML](https://frtechdev.github.io/flem-mail-api/resources/mailapi_manual_de_especificacoes_de_uml.pdf)

- [Diagrama de Modelo de Banco de Dados em PDF](https://frtechdev.github.io/flem-mail-api/resources/diagram-pdf.pdf)

- [Diagrama de Modelo de Banco de Dados em SQL](https://frtechdev.github.io/flem-mail-api/resources/diagram-sql.sql)

Documentação adicional pode ser encontrada [aqui](https://frtechdev.github.io/flem-mail-api/).

<hr>

<a name="section-instrucoes">

## Instruções

</a>

<br>

### Utilizando o repositório como projeto

</a>

1 - Faça um git clone ou o download do repositório, da forma que preferir

```bash

git clone https://github.com/frtechdev/flem-mail-api.git

```

2 - Instale um gerenciador de pacotes (preferencialmente yarn) utilizando um terminal no diretório raiz do repositório clonado

`yarn` ou `npm install`

3 - Execute a aplicação no terminal

`yarn dev` ou `npm run dev`

**Lembre-se de executar `yarn build` ANTES de criar seu container com base no repositório local.**

### Implantando o projeto

</a>

#### Por um repositório clonado

**Lembre-se de executar `yarn build` ANTES de criar seu container com base no repositório local.**

```bash
docker build --env-file .env -f Dockerfile .
```

#### Diretamente do repositório remoto

Você pode utilizar o `docker build` referenciando diretamente o repositório:

```bash
docker build https://github.com/frtechdev/flem-mail-api.git#main
```

Alternativamente, pode usar o comando detalhado para alterar diretamente configurações como porta e nome do repositório:

```bash
docker run -p X:3000 --env-file .env -e github='https://github.com/frtechdev/flem-mail-api.git' -it frtechdev/flem-mail-api
```

**Lembre-se de criar um arquivo `.env` para definir as variáveis de ambiente utilizadas na imagem, ou especificar as variáveis utilizadas uma a uma na linha de comando acima.**

Onde "X" é uma porta externa de sua escolha. Por padrão, a porta interna é 3000.
Para alterar a porta interna, altere a linha `ENV PORT` do [Dockerfile](https://github.com/frtechdev/flem-mail-api/blob/main/Dockerfile).

Para mais informações, visite a [Documentação do Docker](https://docs.docker.com).

</a>

<hr>

<a name="section-vars">

### Variáveis de Ambiente

</a>

<br>

#### Variáveis Principais

| Variável      | Uso   |
|---------------|-------|
|`DATABASE_URL` | Define o endereço do Servidor de BD e as demais informações do mesmo. Aceita uma string no formato `sqlserver://<ENDEREÇO DO SERVIDOR>:<PORTA>;database=<NOME DO BANCO DE DADOS>;user=<USUÁRIO>;password=<SENHA>`. | |
|`NEXT_PUBLIC_API_FILE_UPLOAD` | URL da API de armazenamento de arquivos. | |
|`NEXT_PUBLIC_MAILSERVICE_TYPE` | Tipo de conexão ao serviço de email. Configuração necessária para instanciar o serviço do nodemailer corretamente. (Padrão: `gmail`) | |
|`NEXT_PUBLIC_MAILSERVICE_HOST` | Nome do servidor SMTP host do serviço, por exemplo, `smtp.office365.com` | |
|`NEXT_PUBLIC_MAILSERVICE_PORT` | Porta de conexão do servidor SMTP host do serviço, por exemplo, `587` | |
|`NEXT_PUBLIC_MAILSERVICE_USER` | Nome de usuário de conexão do servidor SMTP host do serviço, por exemplo, `email@company.com` | |
|`NEXT_PUBLIC_MAILSERVICE_PASS` | Senha para a conexão com o servidor SMTP host do serviço, por exemplo, `password@123` | |

<hr>

<a name="section-changelog">

## Notas de versão

</a>

<br>

### v1.1.0-230624

- Criação de um script de Github Actions para Tag e Release automáticos das versões no branch `main`
- Adição de um script de Github Actions para deploy automático de imagem Docker
- Adição de script de limpeza de index de cache do Git
- Adição do arquivo `.yarnclean` para sanitização de módulos
- Documentação de todos os componentes, módulos, arquivos e componentes do projeto
- Criação de Handler para tratamento de Exceções e resposta para o usuário
- Atualização da Documentação

### v1.0.1-221111

- Atualização da Documentação

### v1.0.0-221108

- Commit Inicial
- Criação do dockerignore
- Criação do eslint para definir regras de linting do projeto
- Criação do gitignore
- Criação do markdownlint para definir regras de linting de markdown
- Adição do Dockerfile
- Adição da Documentação

<hr>

<a name="section-autores">

## Autores

</a>

<br>

<a href="https://github.com/frtechdev/flem-mail-api/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=frtechdev/flem-mail-api" />
</a>

<hr>

<a name="section-contato">

## Contato

</a>

<br>

Se você gostou deste projeto, dê uma <a href="https://github.com/frtechdev/flem-mail-api" data-icon="octicon-star" aria-label="Star frtechdev/flem-mail-api on GitHub">estrela</a>. <br>
Para contato, envie um email a: <a href="mailto:dex.houshi@hotmail.com">dex.houshi@hotmail.com</a>

<hr>

<a name="section-licenca">

## Licença

</a>

Licenciado sob a [MIT License](https://github.com/frtechdev/flem-mail-api/blob/main/LICENSE).
