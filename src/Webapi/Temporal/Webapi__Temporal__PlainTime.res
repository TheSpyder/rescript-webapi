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
