type t = Webapi__Temporal__Types.plainDate

@new
external make: (
  ~isoYear: int,
  ~isoMonth: int,
  ~isoDay: int,
  ~calendar: Webapi__Temporal__Types.calendar=?,
) => t = "Temporal.PlainDate"

module PlainDateInit = {
  type t

  // TODO: Review type safety. Not all of these options are valid together when passed to fromInit
  @obj
  external make: (
    ~year: int=?,
    ~month: int=?,
    ~day: int=?,
    ~era: string=?,
    ~eraYear: int=?,
    ~monthCode: string=?,
  ) => t = ""
}

@scope("Temporal.PlainDate") @val external fromString: string => t = "from"
@scope("Temporal.PlainDate") @val
external fromStringWithOptions: (string, {"overflow": [#constrain | #reject]}) => t = "from"
@scope("Temporal.PlainDate") @val external fromInit: PlainDateInit.t => t = "from"
@scope("Temporal.PlainDate") @val
external fromInitWithOptions: (PlainDateInit.t, {"overflow": [#constrain | #reject]}) => t = "from"
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
external addWithOptions: (
  t,
  Webapi__Temporal__Types.duration,
  {"overflow": [#constrain | #reject]},
) => t = "add"
@send external subtract: (t, Webapi__Temporal__Types.duration) => t = "subtract"
@send
external subtractWithOptions: (
  t,
  Webapi__Temporal__Types.duration,
  {"overflow": [#constrain | #reject]},
) => t = "subtract"
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

module ToStringOptions = {
  type t

  @obj
  external make: (~calendarName: [#auto | #always | #never]=?) => t = ""
}

@send external toString: t => string = "toString"
@send external toStringWithOptions: (t, ToStringOptions.t) => string = "toString"
// TODO: toLocaleString, need Intl bindings

module ToZonedDateTimeOptions = {
  type t
  @obj
  external make: (
    ~plainTime: Webapi__Temporal__Types.plainTime=?,
    ~timeZone: Webapi__Temporal__Types.timeZone,
  ) => t = ""
}

@send
external toZonedDateTime: (t, ToZonedDateTimeOptions.t) => Webapi__Temporal__Types.zonedDateTime =
  "toZonedDateTime"
@send external toPlainDateTime: t => Webapi__Temporal__Types.plainDateTime = "toPlainDateTime"
@send
external toPlainDateTimeWithPlainTime: (
  t,
  Webapi__Temporal__Types.plainTime,
) => Webapi__Temporal__Types.plainDateTime = "toPlainDateTime"
@send external toPlainYearMonth: t => Webapi__Temporal__Types.plainYearMonth = "toPlainYearMonth"
@send external toPlainMonthDay: t => Webapi__Temporal__Types.plainMonthDay = "toPlainMonthDay"

type isoFields = {
  isoYear: int,
  isoMonth: int,
  isoDay: int,
  calendar: Webapi__Temporal__Types.calendar,
}
@send external getISOFields: t => isoFields = "getISOFields"
