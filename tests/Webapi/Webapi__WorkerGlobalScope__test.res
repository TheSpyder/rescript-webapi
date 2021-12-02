open Webapi.WorkerGlobalScope

let locationCopy = self->location
let navigatorCopy = self->navigator

self->setOnoffline((_event) => ())
let onOffline = onoffline(self)
importScripts(["module1", "module2"])

// Navigator__ID
let userAgent = navigatorCopy->WorkerNavigator.userAgent
let vendor = navigatorCopy->WorkerNavigator.vendor

// Navigator__Language
let language = navigatorCopy->WorkerNavigator.language
let languages = navigatorCopy->WorkerNavigator.languages

// Navigator__OnLine
let onLine = navigatorCopy->WorkerNavigator.onLine

// Navigator__ConcurrentHardware
let hardwareConcurrency = navigatorCopy->WorkerNavigator.hardwareConcurrency
