type t = Dom.domImplementation

@send
external createDocumentType: (
  t,
  ~qualifiedName: string,
  ~publicId: string,
  ~systemId: string,
) => Dom.documentType = ""
@send
external createDocument: (
  t,
  Js.null<string>,
  string,
  Js.null<Dom.documentType>,
) => Dom.xmlDocument = ""
let createDocument = (
  impl,
  ~namespace: option<string>=?,
  ~qualifiedName: string,
  ~docType: option<Dom.documentType>=?,
  (),
) => impl->createDocument(Js.Null.fromOption(namespace), qualifiedName, Js.Null.fromOption(docType))
@send external createHTMLDocument: t => Dom.htmlDocument = ""
@send
external createHTMLDocumentWithTitle: (t, string) => Dom.htmlDocument = "createHTMLDocument"
@send
external hasFeature: t => bool =
  "" /* useless; always returns true (this is exact wording from the actual spec) */
