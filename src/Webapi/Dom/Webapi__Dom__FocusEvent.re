type t = Dom.focusEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});
include Webapi__Dom__UiEvent.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "FocusEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "FocusEvent";

[@get] [@return nullable] external relatedTarget: t => option(Dom.eventTarget);
