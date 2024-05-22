open Webapi
open Dom

let navigatorCopy: Navigator.t = window->Window.navigator

let userAgent: string = navigatorCopy.userAgent
let vendor: string = navigatorCopy.vendor
let language: string = navigatorCopy.language
let languages: array<string> = navigatorCopy.languages
let onLine: bool = navigatorCopy.onLine
let hardwareConcurrency: int = navigatorCopy.hardwareConcurrency

Navigator.registerProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")
Navigator.unregisterProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")

let cookieEnabled: bool = navigatorCopy.cookieEnabled
let pdfViewerEnabled: bool = navigatorCopy.pdfViewerEnabled
