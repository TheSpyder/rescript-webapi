type t = Webapi__Temporal__Types.plainTime

@new
external make: (
  ~isoHour: int=?,
  ~isoMinute: int=?,
  ~isoSecond: int=?,
  ~isoMillisecond: int=?,
  ~isoMicrosecond: int=?,
  ~isoNanosecond: int=?,
  unit
) => t = "Temporal.PlainTime"

module PlainTimeInit = {
  type t
  @obj
  external make: (
    ~hour: int=?,
    ~minute: int=?,
    ~second: int=?,
    ~millisecond: int=?,
    ~microsecond: int=?,
    ~nanosecond: int=?,
    unit
  ) => t = ""
}

@scope("Temporal.PlainTime") @val external fromString: string => t = "from"
@scope("Temporal.PlainDate") @val
external fromStringWithOptions: (string, {"overflow": [#constrain | #reject]}) => t = "from"
@scope("Temporal.PlainTime") @val external fromInit: PlainTimeInit.t => t = "from"
@scope("Temporal.PlainTime") @val
external fromInitWithOptions: (PlainTimeInit.t, {"overflow": [#constrain | #reject]}) => t = "from"
@scope("Temporal.PlainTime") @val external compare: (t, t) => int = "compare"
@get external hour: t => int = "hour"
@get external minute: t => int = "minute"
@get external second: t => int = "second"
@get external millisecond: t => int = "millisecond"
@get external microsecond: t => int = "microsecond"
@get external nanosecond: t => int = "nanosecond"
@get external calendar: t => Webapi__Temporal__Types.calendar = "calendar"
// TODO: add `with` binding
@send external add: (t, Webapi__Temporal__Types.duration) => t = "add"
@send external subtract: (t, Webapi__Temporal__Types.duration) => t = "subtract"
@send external until: (t, t) => Webapi__Temporal__Types.duration = "until"
@send
external untilWithOptions: (
  t,
  t,
  // TODO: Need a different type as the valid units don't include time here
  Webapi__Temporal__Difference.DifferenceOptions.t,
) => Webapi__Temporal__Types.duration = "until"
@send external since: (t, t) => Webapi__Temporal__Types.duration = "since"
@send
external sinceWithOptions: (
  t,
  t,
  Webapi__Temporal__Difference.DifferenceOptions.t,
) => Webapi__Temporal__Types.duration = "since"
@send external equals: (t, t) => bool = "equals"

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
@send
external toZonedDateTime: (
  t,
  {"timeZone": Webapi__Temporal__Types.timeZone, "plainDate": Webapi__Temporal__Types.plainDate},
) => Webapi__Temporal__ZonedDateTime.t = "toZonedDateTime"
@send
external toPlainDateTime: (
  t,
  Webapi__Temporal__Types.plainDate,
) => Webapi__Temporal__ZonedDateTime.t = "toPlainDateTime"

type isoFields = {
  isoHour: int,
  isoMinute: int,
  isoSecond: int,
  isoMillisecond: int,
  isoMicrosecond: int,
  isoNanosecond: int,
  calendar: Webapi__Temporal__Types.calendar,
}

@send external getISOFields: t => isoFields = "getISOFields"
