type signal
type t = private {signal: signal}

@new external make: unit => t = "AbortController"
@send external abort: t => unit = "abort"

@ocaml.doc("For compatibility. Prefer the record field.")
@get external signal: t => signal = "signal"
