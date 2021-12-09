type t

let userAgent: t => string
let vendor: t => string
let language: t => string
let onLine: t => bool
let registerProtocolHandler: (t, ~scheme: string, ~url: string) => unit
let unregisterProtocolHandler: (t, ~scheme: string, ~url: string) => unit
let cookieEnabled: t => bool
let javaEnabled: t => bool
let pdfViewerEnabled: t => bool
let hardwareConcurrency: t => float
