type t = Webapi__Temporal__Types.instant

// @new external make: BigInt.t => t = "Temporal.Instant"
@scope("Temporal.Instant") @val external fromString: string => t = "from"
@scope("Temporal.Instant") @val external fromInstant: t => t = "from"
@scope("Temporal.Instant") @val external fromEpochSeconds: float => t = "fromEpochSeconds"
@scope("Temporal.Instant") @val
external fromEpochMilliseconds: float => t = "fromEpochMilliseconds"
// @scope("Temporal.Instant") @val external fromEpochMicroseconds: BigInt.t => t = "fromEpochMicroseconds"
// @scope("Temporal.Instant") @val external fromEpochNanoseconds: BigInt.t => t = "fromEpochNanoseconds"
@scope("Temporal.Instant") @val external compare: (t, t) => int = "compare"
@scope("Temporal.Instant") @val external compareStrings: (string, string) => int = "compare"

@get external epochSeconds: t => float = "epochSeconds"
@get external epochMilliseconds: t => float = "epochMilliseconds"
// @get external epochMicroseconds: t => BigInt.t = "epochMicroseconds"
// @get external epochNanoseconds: t => BigInt.t = "epochNanoseconds"
@send
external toZonedDateTimeISO: (
  t,
  Webapi__Temporal__Types.timeZone,
) => Webapi__Temporal__ZonedDateTime.t = "toZonedDateTimeISO"
@send
external toZonedDateTime: (
  t,
  {"timeZone": Webapi__Temporal__Types.timeZone, "calendar": Webapi__Temporal__Types.calendar},
) => Webapi__Temporal__ZonedDateTime.t = "toZonedDateTime"
@send external add: (t, Webapi__Temporal__Types.duration) => t = "add"
@send external subtract: (t, Webapi__Temporal__Types.duration) => t = "subtract"

@send external until: (t, t) => Webapi__Temporal__Types.duration = "until"
@send
external untilWithOptions: (
  t,
  t,
  Webapi__Temporal__Difference.DifferenceOptions.t,
) => Webapi__Temporal__Types.duration = "until"
@send external since: (t, t) => Webapi__Temporal__Types.duration = "since"
@send
external sinceWithOptions: (
  t,
  t,
  Webapi__Temporal__Difference.DifferenceOptions.t,
) => Webapi__Temporal__Types.duration = "since"

type roundTo = [
  | #hour
  | #minute
  | #second
  | #millisecond
  | #microsecond
  | #nanosecond
]

module RoundOptions = {
  type t

  @obj
  external make: (
    ~smallestUnit: roundTo,
    ~roundingIncrement: int=?,
    ~roundingMode: [#halfExpand | #ceil | #trunc | #floor]=?,
    unit
  ) => t = ""
}

@send external round: (t, ~to: roundTo) => t = "round"
@send external roundWithOptions: (t, RoundOptions.t) => t = "round"
@send external equals: (t, t) => bool = "equals"

module ToStringOptions = {
  type t

  @obj
  external make: (
    ~timeZone: Webapi__Temporal__Types.timeZone=?,
    ~fractionalSecondDigits: [#auto | #0 | #1 | #2 | #3 | #4 | #5 | #6 | #7 | #8 | #9]=?,
    ~smallestUnit: [
      | #minute
      | #second
      | #millisecond
      | #microsecond
      | #nanosecond
    ]=?,
    ~roundingMode: [#halfExpand | #ceil | #trunc | #floor]=?,
    unit
  ) => t = ""
}

@send external toString: t => string = "toString"
@send external toStringWithOptions: (t, ToStringOptions.t) => string = "toString"
// TODO: toLocaleString, need Intl bindings
