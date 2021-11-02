type t = Dom.history
type state /* TODO: should be "anything that can be serializable" apparently */

@get external length: t => int = "length"
@get external scrollRestoration: t => bool = "scrollRestoration" /* experimental */
@set external setScrollRestoration: (t, bool) => unit = "scrollRestoration" /* experimental */
@get external state: t => state = "state"

@send external back: t => unit = "back"
@send external forward: t => unit = "forward"
@send external go: (t, int) => unit = "go"
@send external pushState: (t, state, string, string) => unit = "pushState"
@send external replaceState: (t, state, string, string) => unit = "replaceState"
