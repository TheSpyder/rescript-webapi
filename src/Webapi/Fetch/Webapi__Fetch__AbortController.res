type signal
type t = {signal: signal}

@new external make: unit => t = "AbortController"
@send external abort: t => unit = "abort"

/** For compatibility. Prefer the record field. */
@get external signal: t => signal = "signal"
