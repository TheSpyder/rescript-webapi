type t = Dom.compositionEvent;

include Webapi__Dom__Event.Impl({ type nonrec t = t; });
include Webapi__Dom__UiEvent.Impl({ type nonrec t = t; });

[@new] external make : string => t = "CompositionEvent";
[@new] external makeWithOptions : (string, Js.t({..})) => t = "CompositionEvent";

[@get] external data : t => string = "";
