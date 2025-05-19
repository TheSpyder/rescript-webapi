type t = Webapi__Temporal__Types.duration

@new
external make: (
  ~years: int=?,
  ~months: int=?,
  ~weeks: int=?,
  ~days: int=?,
  ~hours: int=?,
  ~minutes: int=?,
  ~seconds: int=?,
  ~milliseconds: int=?,
  ~microseconds: int=?,
  ~nanoseconds: int=?,
  unit,
) => t = "Temporal.Duration"

@scope("Temporal.Duration") @val external fromString: string => t = "from"
@scope("Temporal.Duration") @val external compare: (t, t) => int = "compare"
@scope("Temporal.Duration") @val
external compareRelativeToPlainDate: (t, {"relativeTo": Webapi__Temporal__Types.plainDate}) => int =
  "compare"
@scope("Temporal.Duration") @val
external compareRelativeToZonedDateTime: (
  t,
  {"relativeTo": Webapi__Temporal__Types.zonedDateTime},
) => int = "compare"

@get external years: t => int = "years"
@get external months: t => int = "months"
@get external days: t => int = "days"
@get external hours: t => int = "hours"
@get external minutes: t => int = "minutes"
@get external seconds: t => int = "seconds"
@get external milliseconds: t => int = "milliseconds"
@get external microseconds: t => int = "microseconds"
@get external nanoseconds: t => int = "nanoseconds"
@get external sign: t => int = "sign"
@get external blank: t => bool = "blank"
// TODO: Add `with` binding
@send external add: (t, t) => t = "add"
@send
external addRelativeToPlainDate: (t, t, {"relativeTo": Webapi__Temporal__Types.plainDate}) => t =
  "add"
@send
external addRelativeToZonedDateTime: (
  t,
  t,
  {"relativeTo": Webapi__Temporal__Types.zonedDateTime},
) => t = "add"
@send external subtract: (t, t) => t = "subtract"
@send
external subtractRelativeToPlainDate: (
  t,
  t,
  {"relativeTo": Webapi__Temporal__Types.plainDate},
) => t = "subtract"
@send
external subtractRelativeToZonedDateTime: (
  t,
  t,
  {"relativeTo": Webapi__Temporal__Types.zonedDateTime},
) => t = "subtract"
@send external negated: t => t = "negated"
@send external abs: t => t = "abs"

type roundTo = [
  | #day
  | #hour
  | #minute
  | #second
  | #millisecond
  | #microsecond
  | #nanosecond
]

@send external round: (t, ~to: roundTo) => t = "round"
// TODO: roundWithOptions. Tough because relativeTo can be either a PlainDate or ZonedDateTime
@send
external total: (
  t,
  [#hour | #minute | #second | #millisecond | #microsecond | #nanosecond],
) => float = "total"
// TODO: totalWithOptions. Tough because relativeTo can be either a PlainDate or ZonedDateTime

module ToStringOptions = {
  type t

  @obj
  external make: (
    ~fractionalSecondDigits: [#auto | #0 | #1 | #2 | #3 | #4 | #5 | #6 | #7 | #8 | #9]=?,
    ~smallestUnit: [
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
