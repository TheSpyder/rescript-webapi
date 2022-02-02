open Webapi.WorkerGlobalScope

let locationCopy: workerLocation = self->location
let navigatorCopy: Webapi.WorkerNavigator.t = self->navigator

self->setOnoffline((_event) => ())
let onOffline: eventHandler<Webapi.Dom.Event.t> = onoffline(self)
importScripts(["module1", "module2"])

let userAgent = navigatorCopy.userAgent
let vendor = navigatorCopy.vendor
let language = navigatorCopy.language
let languages = navigatorCopy.languages
let onLine = navigatorCopy.onLine
let hardwareConcurrency = navigatorCopy.hardwareConcurrency
