@@ocaml.text(" We need to bind to JavaScript Iterators for FormData functionality.
    But ideally this binding should be moved into BuckleScript itself.

    @see {{: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols}} ")

module Next: {
  type t<'a>

  @get external done_: t<_> => option<bool> = "done"
  @get @return(nullable) external value: t<'a> => option<'a> = "value"
}

type t<'a>

@ocaml.doc(" [forEach ~f iterator] runs [f] on each item returned by the
    [iterator]. This is not defined by the platform but a convenience
    function. ")
let forEach: (~f: (. 'a) => unit, t<'a>) => unit

@send external next: t<'a> => Next.t<'a> = "next"
