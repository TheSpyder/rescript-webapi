module DifferenceOptions = {
  type t

  type durationUnit = [
    | #auto
    | #hour
    | #minute
    | #second
    | #millisecond
    | #microsecond
    | #nanosecond
  ]

  @obj
  external make: (
    ~largestUnit: durationUnit=?,
    ~smallestUnit: durationUnit=?,
    ~roundingIncrement: int=?,
    ~roundingMode: [#halfExpand | #ceil | #trunc | #floor]=?,
    unit
  ) => t = ""
}
