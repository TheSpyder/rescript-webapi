module Next = {
  type t<'a>

  @get external done_: t<_> => option<bool> = "done"
  @get @return(nullable) external value: t<'a> => option<'a> = "value"
}

type t<'a>

@send external next: t<'a> => Next.t<'a> = "next"

let rec forEach = (~f, t) => {
  let item = next(t)
  switch {
    open Next
    (done_(item), value(item))
  } {
  | (Some(true), Some(value)) => f(. value)
  | (Some(true), None) => ()
  | (Some(false) | None, Some(value)) =>
    f(. value)
    forEach(~f, t)
  | (Some(false) | None, None) => forEach(~f, t)
  }
}
