open Webapi
open Dom

let navigatorCopy = window->Window.navigator

let userAgent = navigatorCopy.userAgent
let vendor = navigatorCopy.vendor
let language = navigatorCopy.language
let languages = navigatorCopy.languages
let onLine = navigatorCopy.onLine
let hardwareConcurrency = navigatorCopy.hardwareConcurrency

Navigator.registerProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")
Navigator.unregisterProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")

let cookieEnabled: bool = navigatorCopy.cookieEnabled
let pdfViewerEnabled: bool = navigatorCopy.pdfViewerEnabled
