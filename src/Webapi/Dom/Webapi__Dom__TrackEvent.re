type t = Dom.trackEvent;
type track; /* TODO: VideoTrack or AudioTrack or TextTrack */

include Webapi__Dom__Event.Impl({ type nonrec t = t; });

[@new] external make : string => t = "TrackEvent";
[@new] external makeWithOptions : (string, Js.t({..})) => t = "TrackEvent";

[@get] external track : t => track = "";
