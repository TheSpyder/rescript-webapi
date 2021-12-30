type t = Webapi__Temporal__Types.plainDate

@new
external make: (
  ~isoYear: int,
  ~isoMonth: int,
  ~isoDay: int,
  ~calendar: Webapi__Temporal__Types.calendar,
) => t = "Temporal.PlainDate"

module PlainDateInit = {
  type t

  // TODO: Review type safety. Not all of these options are valid together when passed to fromInit
  @obj
  external make: (
    ~year: int=?,
    ~era: string=?,
    ~eraYear: int=?,
    ~month: int=?,
    ~monthCode: string=?,
  ) => t = ""
}

module FromOptions = {
  type t

  @obj external make: (~overflow: [#constrain | #reject]=?) => t = ""
}

@scope("Temporal.PlainDate") @val external fromString: string => t = "from"
@scope("Temporal.PlainDate") @val
external fromStringWithOptions: (string, FromOptions.t) => t = "from"
@scope("Temporal.PlainDate") @val external fromInit: PlainDateInit.t => t = "from"
@scope("Temporal.PlainDate") @val
external fromInitWithOptions: (PlainDateInit.t, FromOptions.t) => t = "from"
@scope("Temporal.PlainDate") @val external compare: (t, t) => int = "compare"
@get external year: t => int = "year"
@get external month: t => int = "month"
@get external day: t => int = "day"
@get external monthCode: t => int = "monthCode"
@get external calendar: t => Webapi__Temporal__Types.calendar = "calendar"
@get external timeZone: t => Webapi__Temporal__Types.timeZone = "timeZone"
@get external era: t => option<string> = "era"
@get external eraYear: t => option<float> = "eraYear"
@get external dayOfWeek: t => int = "dayOfWeek"
@get external dayOfYear: t => int = "dayOfYear"
@get external weekOfYear: t => int = "weekOfYear"
@get external daysInWeek: t => int = "daysInWeek"
@get external daysInMonth: t => int = "daysInMonth"
@get external daysInYear: t => int = "daysInYear"
@get external monthsInYear: t => int = "monthsInYear"
@get external inLeapYear: t => bool = "inLeapYear"
// TODO: add `with` binding
@send external withCalendar: (t, Webapi__Temporal__Types.calendar) => t = "withCalendar"
@send external add: (t, Webapi__Temporal__Types.duration) => t = "add"
@send
external addWithOptions: (t, Webapi__Temporal__Types.duration, Webapi__Temporal__ArithmaticOptions.t) => t = "add"
@send external subtract: (t, Webapi__Temporal__Types.duration) => t = "subtract"
@send
external subtractWithOptions: (t, Webapi__Temporal__Types.duration, Webapi__Temporal__ArithmaticOptions.t) => t =
  "subtract"
