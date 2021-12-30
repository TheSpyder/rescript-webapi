type t = Webapi__Temporal__Types.zonedDateTime

// @new external make: (~epochNanoseconds: BigInt.t, ~timeZone: TimeZone.t) => t = "Temporal.ZonedDateTime"
// @new external makeWithCalendar: (~epochNanoseconds: BigInt.t, ~timeZone: TimeZone.t, ~calendar: Calendar.t) => t = "Temporal.ZonedDateTime"

module ZonedDateTimeInit = {
  type t

  @obj
  external make: (
    ~timeZone: Webapi__Temporal__Types.timeZone=?,
    ~year: int=?,
    ~month: int=?,
    ~day: int=?,
    ~minute: int=?,
    ~second: int=?,
    ~millisecond: int=?,
    ~microsecond: int=?,
    ~nanosecond: int=?,
  ) => t = ""
}

module FromOptions = {
  type t

  @obj
  external make: (
    ~overflow: [#constrain | #reject]=?,
    ~disambiguation: [#compatible | #earlier | #later | #reject]=?,
    ~offset: [#use | #ignore | #prefer | #reject]=?,
  ) => t = ""
}

@scope("Temporal.ZonedDateTime") @val external fromString: string => t = "from"
@scope("Temporal.ZonedDateTime") @val
external fromStringWithOptions: (string, FromOptions.t) => t = "from"
@scope("Temporal.ZonedDateTime") @val external fromInit: ZonedDateTimeInit.t => t = "from"
@scope("Temporal.ZonedDateTime") @val
external fromInitWithOptions: (ZonedDateTimeInit.t, FromOptions.t) => t = "from"
@send external compare: (t, t) => int = "compare"
@get external year: t => int = "year"
@get external month: t => int = "month"
@get external day: t => int = "day"
@get external hour: t => int = "hour"
@get external minute: t => int = "minute"
@get external second: t => int = "second"
@get external millisecond: t => int = "millisecond"
@get external microsecond: t => int = "microsecond"
@get external nanosecond: t => int = "nanosecond"
@get external monthCode: t => int = "monthCode"
@get external epochSeconds: t => float = "epochSeconds"
@get external epochMilliseconds: t => float = "epochMilliseconds"
// @get external epochMicroseconds: t => BigInt.t = "epochMicroseconds"
// @get external epochNanoseconds: t => BigInt.t = "epochNanoseconds"
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
@get external hoursInDay: t => int = "hoursInDay"
@get external startOfDay: t => t = "startOfDay"
@get external offsetNanoseconds: t => float = "offsetNanoseconds"
@get external offset: t => string = "offset"
// TODO: Add `with` binding
@send external withPlainTime: (t, Webapi__Temporal__Types.plainTime) => t = "withPlainTime"
@send external withPlainDate: (t, Webapi__Temporal__Types.plainDate) => t = "withPlainDate"
@send external withTimeZone: (t, Webapi__Temporal__Types.timeZone) => t = "withTimeZone"
@send external withCalendar: (t, Webapi__Temporal__Types.calendar) => t = "withCalendar"
@send external add: (t, Webapi__Temporal__Types.duration) => t = "add"
@send
external addWithOptions: (t, Webapi__Temporal__Types.duration, Webapi__Temporal__ArithmaticOptions.t) => t = "add"
@send external subtract: (t, Webapi__Temporal__Types.duration) => t = "subtract"
@send
external subtractWithOptions: (t, Webapi__Temporal__Types.duration, Webapi__Temporal__ArithmaticOptions.t) => t =
  "subtract"

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
@send external equals: (t, t) => bool = "equals"

module ToStringOptions = {
  type t

  @obj
  external make: (
    ~offset: [#auto | #never]=?,
    ~timeZoneName: [#auto | #never]=?,
    ~calendarName: [#auto | #always | #never]=?,
    ~fractionalSecondDigits: [#auto | #0 | #1 | #2 | #3 | #4 | #5 | #6 | #7 | #8 | #9]=?,
    ~smallestUnit: [
      | #minute
      | #second
      | #millisecond
      | #microsecond
      | #nanosecond
    ]=?,
    ~roundingMode: [#halfExpand | #ceil | #trunc | #floor]=?,
  ) => t = ""
}

@send external toString: t => string = "toString"
@send external toStringWithOptions: (t, ToStringOptions.t) => string = "toString"
// TODO: toLocaleString, need Intl bindings
@send external toInstant: t => Webapi__Temporal__Types.instant = "toInstant"
@send external toPlainDate: t => Webapi__Temporal__Types.plainDate = "toPlainDate"
@send external toPlainTime: t => Webapi__Temporal__Types.plainTime = "toPlainTime"
@send external toPlainDateTime: t => Webapi__Temporal__Types.plainDateTime = "toPlainDateTime"
@send external toPlainYearMonth: t => Webapi__Temporal__Types.plainYearMonth = "toPlainYearMonth"
@send external toPlainMonthDay: t => Webapi__Temporal__Types.plainMonthDay = "toPlainMonthDay"

type isoFields = {
  isoYear: int,
  isoMonth: int,
  isoDay: int,
  hour: int,
  minute: int,
  second: int,
  millisecond: int,
  microsecond: int,
  nanosecond: int,
  offset: string,
  timeZone: Webapi__Temporal__Types.timeZone,
  calendar: Webapi__Temporal__Types.calendar,
}

@send external getISOFields: t => isoFields = "getISOFields"
