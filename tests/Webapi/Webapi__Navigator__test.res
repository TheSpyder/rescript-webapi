open Webapi.Dom

let navigatorCopy = window->Window.navigator

let userAgent = navigatorCopy->Webapi.Navigator.userAgent
let vendor = navigatorCopy->Webapi.Navigator.vendor
let language = navigatorCopy->Webapi.Navigator.language
let languages = navigatorCopy->Webapi.Navigator.languages
let onLine = navigatorCopy->Webapi.Navigator.onLine
let hardwareConcurrency = navigatorCopy->Webapi.Navigator.hardwareConcurrency

Webapi.Navigator.registerProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")
Webapi.Navigator.unregisterProtocolHandler(navigatorCopy, ~scheme="web+foo", ~url="foo?url=%s")

let cookieEnabled = navigatorCopy->Webapi.Navigator.cookieEnabled
let pdfViewerEnabled = navigatorCopy->Webapi.Navigator.pdfViewerEnabled
