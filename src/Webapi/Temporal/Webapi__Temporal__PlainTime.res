type t = Webapi__Temporal__Types.plainTime

@new
external make: (
  ~isoHour: int=?,
  ~isoMinute: int=?,
  ~isoSecond: int=?,
  ~isoMillisecond: int=?,
  ~isoMicrosecond: int=?,
  ~isoNanosecond: int=?,
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
    ~calendar: Webapi__Temporal__Types.calendar=?,
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
