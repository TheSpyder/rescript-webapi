/**
  Duplicate from other libraries that bind to iterators
  but we don't want to depend on something like rescript-js
 */
type next<'a> = {done: bool}

@get external done: next<_> => option<bool> = "done"
@get @return(nullable) external value: next<'a> => option<'a> = "value"

type t<'a>

@send external next: t<'a> => next<'a> = "next"


@ocaml.doc(" [forEach ~f iterator] runs [f] on each item returned by the
    [iterator]. This is not defined by the platform but a convenience
    function. ")
let forEach: (~f: (. 'a) => unit, t<'a>) => unit