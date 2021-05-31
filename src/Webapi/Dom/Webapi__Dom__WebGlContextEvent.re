type t = Dom.webGlContextEvent;

include Webapi__Dom__Event.Impl({ type nonrec t = t; });

[@new] external make : string => t = "WebGLContextEvent";
[@new] external makeWithOptions : (string, Js.t({..})) => t = "WebGLContextEvent";

[@get] external statusMessage : t => string = "";
