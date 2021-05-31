module Impl = (T: {type t;}) => {
  [@get] external detail : T.t => int = "";
  [@get] external view : T.t => Dom.window = ""; /* technically returns a `WindowProxy` */
};

type t = Dom.uiEvent;

include Webapi__Dom__Event.Impl({ type nonrec t = t; });
include Impl({ type nonrec t = t; });

[@new] external make : string => t = "UIEvent";
[@new] external makeWithOptions : (string, Js.t({..})) => t = "UIEvent";
