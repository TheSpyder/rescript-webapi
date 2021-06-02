
type rafId;

[@val] external requestAnimationFrame: (float => unit) => unit;
[@val]
external requestCancellableAnimationFrame: (float => unit) => rafId = "requestAnimationFrame";
[@val] external cancelAnimationFrame: rafId => unit;
