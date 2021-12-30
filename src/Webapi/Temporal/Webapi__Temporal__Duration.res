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
  unit
) => t = "Temporal.Duration"
