type t = Dom.customEvent;

include Webapi__Dom__Event.Impl({ type nonrec t = t; });

[@new] external make : string => t = "CustomEvent";
[@new] external makeWithOptions : (string, Js.t({..})) => t = "CustomEvent";
