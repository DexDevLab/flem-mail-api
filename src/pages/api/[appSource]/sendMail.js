import { sendMailPortalPPE } from "controllers/sendMailControllers";
import nc from "next-connect";
import { exceptionHandler } from "utils/exceptionHandler";

/**
 * Handler de manipulação de dados de email na rota.
 * @method nc
 * @memberof module:appSource
 * @param {Object} req HTTP request.
 * @param {Object} res HTTP response.
 * @returns {Object} HTTP response como JSON contendo a resposta da query consultada.
 */
export default nc({
  onError: (err, req, res, next) => {
    console.error(err.stack);
    res.status(500).json("Something broke!");
  },
  onNoMatch: (req, res) => {
    res.status(405).json("Method Not Allowed");
  },
}).post(mailHandler(req, res));

/**
 * Handler de manipulação de dados de email na rota.
 * @method mailHandler
 * @memberof module:appSource
 * @param {Object} req HTTP request.
 * @param {Object} res HTTP response.
 * @returns {Object} HTTP response como JSON contendo a resposta da query consultada.
 */
export async function mailHandler(req, res) {
  try {
    const { appSource } = req.query;
    switch (appSource) {
      case "Portal_PPE":
        try {
          const response = await sendMailPortalPPE(appSource, req.body);
          return res.status(200).json(response);
        } catch (e) {
          return exceptionHandler(e, res);
        }
      default:
        return exceptionHandler(null, res);
    }
  } catch (error) {
    res.status(500).json(JSON.stringify(error));
  }
}
