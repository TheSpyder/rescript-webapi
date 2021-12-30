type t = Webapi__Temporal__Types.plainTime

@new
external make: (
  ~isoHour: int=?,
  ~isoMinute: int=?,
  ~isoSecond: int=?,
  ~isoMillisecond: int=?,
  ~isoMicrosecond: int=?,
  ~isoNanosecond: int=?,
) => t = "Temporal.PlainDate"
