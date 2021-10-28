type t<'a>
/**
  Not including value in the record type, because it would need to be Js.Null.t<'a>
  which is annoying to deal with
 */
type next<'a> = {done: bool}

@get external done: next<_> => option<bool> = "done"
@get @return(nullable) external value: next<'a> => option<'a> = "value"

@send external next: t<'a> => next<'a> = "next"

let rec forEach = (~f, t) => {
  let item = next(t)
  switch {
    (done(item), value(item))
  } {
  | (Some(true), Some(value)) => f(. value)
  | (Some(true), None) => ()
  | (Some(false) | None, Some(value)) =>
    f(. value)
    forEach(~f, t)
  | (Some(false) | None, None) => forEach(~f, t)
  }
}
