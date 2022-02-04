open Webapi.WorkerGlobalScope

let locationCopy: workerLocation = self->location
let navigatorCopy: Webapi.WorkerNavigator.t = self->navigator

self->setOnoffline((_event) => ())
let onOffline: eventHandler<Webapi.Dom.Event.t> = onoffline(self)
importScripts(["module1", "module2"])

let userAgent: string = navigatorCopy.userAgent
let vendor: string = navigatorCopy.vendor
let language: string = navigatorCopy.language
let languages: array<string> = navigatorCopy.languages
let onLine: bool = navigatorCopy.onLine
let hardwareConcurrency: int = navigatorCopy.hardwareConcurrency
