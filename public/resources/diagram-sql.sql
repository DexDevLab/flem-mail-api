CREATE TABLE [Mails] (
  [id] String PRIMARY KEY,
  [to] String NOT NULL,
  [from] String NOT NULL,
  [subject] String NOT NULL,
  [content] String NOT NULL,
  [attachmentsId] String,
  [referenceObjId] String NOT NULL,
  [appSource] String NOT NULL,
  [isSent] Boolean NOT NULL DEFAULT (false),
  [isDeleted] Boolean NOT NULL DEFAULT (false),
  [createdBy] String NOT NULL DEFAULT 'SISTEMA',
  [updatedBy] String NOT NULL DEFAULT 'SISTEMA',
  [createdAt] DateTime NOT NULL DEFAULT (now()),
  [updatedAt] DateTime NOT NULL
)
GO
