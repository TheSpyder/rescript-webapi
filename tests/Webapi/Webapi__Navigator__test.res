open Webapi.Dom

let navigatorCopy: Webapi.Navigator.t = window->Window.navigator

let userAgent: string = navigatorCopy.userAgent
let vendor: string = navigatorCopy.vendor
let language: string = navigatorCopy.language
let languages: array<string> = navigatorCopy.languages
let onLine: bool = navigatorCopy.onLine
let hardwareConcurrency: int = navigatorCopy.hardwareConcurrency

Webapi.Navigator.registerProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")
Webapi.Navigator.unregisterProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")

let cookieEnabled: bool = navigatorCopy.cookieEnabled
let pdfViewerEnabled: bool = navigatorCopy.pdfViewerEnabled
