open Webapi.Dom

let navigatorCopy = window->Window.navigator

let userAgent = navigatorCopy.userAgent
let vendor = navigatorCopy.vendor
let language = navigatorCopy.language
let languages = navigatorCopy.languages
let onLine = navigatorCopy.onLine
let hardwareConcurrency = navigatorCopy.hardwareConcurrency

Webapi.Navigator.registerProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")
Webapi.Navigator.unregisterProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")

let cookieEnabled = navigatorCopy.cookieEnabled
let pdfViewerEnabled = navigatorCopy.pdfViewerEnabled
