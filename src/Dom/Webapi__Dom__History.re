type t = Dom.history;
type state; /* TODO: should be "anything that can be serializable" apparently */

[@get] external length: t => int;
[@get] external scrollRestoration: t => bool; /* experimental */
[@set] external setScrollRestoration: (t, bool) => unit = "scrollRestoration"; /* experimental */
[@get] external state: t => state;

[@send] external back: t => unit;
[@send] external forward: t => unit;
[@send] external go: (t, int) => unit;
[@send] external pushState: (t, state, string, string) => unit;
[@send] external replaceState: (t, state, string, string) => unit;
