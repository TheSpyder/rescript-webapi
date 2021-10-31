open Webapi.Dom
open! HtmlDocument

let el = document->Document.createElement("strong")
let htmlDocument = document->Document.asHtmlDocument->TestHelpers.unsafelyUnwrapOption

let _ = switch (htmlDocument->activeElement) {
  | Some(e) => Js.log(e)
  | None => ()
}

let _ = htmlDocument->body
let _ = htmlDocument->setBody(el)
let _ = htmlDocument->cookie
let _ = htmlDocument->setCookie("foo=bar;reason=ml")
let _ = htmlDocument->defaultView
let _ = htmlDocument->designMode
let _ = htmlDocument->setDesignMode(On)
let _ = htmlDocument->dir
let _ = htmlDocument->setDir(Ltr)
let _ = htmlDocument->domain
let _ = htmlDocument->setDomain("reason.ml")
let _ = htmlDocument->embeds
let _ = htmlDocument->forms
let _ = htmlDocument->head
let _ = htmlDocument->images
let _ = htmlDocument->lastModified
let _ = htmlDocument->links
let _ = htmlDocument->location
let _ = htmlDocument->setLocation("http://reason.ml")
let _ = htmlDocument->plugins
let _ = htmlDocument->readyState
let _ = htmlDocument->referrer
let _ = htmlDocument->scripts
let _ = htmlDocument->title
let _ = htmlDocument->setTitle("Reason: Rapid Expressive Systems Programming.")
let _ = htmlDocument->url

htmlDocument->close
let _ = htmlDocument->execCommand("copy", false, None)
let _ = htmlDocument->getElementsByName("angry-joe")
let _ = htmlDocument->getSelection
let _ = htmlDocument->hasFocus
htmlDocument->open_
let _ = htmlDocument->queryCommandEnabled("copy")
let _ = htmlDocument->queryCommandIndeterm("cut")
let _ = htmlDocument->queryCommandSupported("paste")
let _ = htmlDocument->queryCommandValue("fontName")
htmlDocument->write("Hello World!")
htmlDocument->writeln("Hello Newline!")
