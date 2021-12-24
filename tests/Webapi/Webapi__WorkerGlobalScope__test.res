open Webapi.WorkerGlobalScope

let locationCopy = self->location
let navigatorCopy = self->navigator

self->setOnoffline((_event) => ())
let onOffline = onoffline(self)
importScripts(["module1", "module2"])

let userAgent = navigatorCopy->Webapi.WorkerNavigator.userAgent
let vendor = navigatorCopy->Webapi.WorkerNavigator.vendor
let language = navigatorCopy->Webapi.WorkerNavigator.language
let languages = navigatorCopy->Webapi.WorkerNavigator.languages
let onLine = navigatorCopy->Webapi.WorkerNavigator.onLine
let hardwareConcurrency = navigatorCopy->Webapi.WorkerNavigator.hardwareConcurrency
