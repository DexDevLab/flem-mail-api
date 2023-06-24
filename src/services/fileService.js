import axiosClient from "axios";

/**
 * Conexão padrão com a API de Arquivos pelo Axios.
 * @method filesAPIService
 * @memberof module:services
 * @returns {Function} Instância Axios.
 */
export const fileService = axiosClient.create({
  baseURL: `${process.env.NEXT_API_FILE_UPLOAD}`,
  timeout: 30000,
});
