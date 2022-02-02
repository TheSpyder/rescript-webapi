type t = Dom.history

@ocaml.doc("State could be anything that is serializable, to use this convert manually using %identity externals")
type state

@get external length: t => int = "length"
@get external scrollRestoration: t => [#auto | #manual] = "scrollRestoration"
@set external setScrollRestoration: (t, [#auto | #manual]) => unit = "scrollRestoration"

@send external back: t => unit = "back"
@send external forward: t => unit = "forward"
@send external go: (t, int) => unit = "go"

/** To add a popstate listener, use Window.addPopStateEventListener */
@get external state: t => state = "state"
@send external pushState: (t, state, string, string) => unit = "pushState"
@send external replaceState: (t, state, string, string) => unit = "replaceState"
