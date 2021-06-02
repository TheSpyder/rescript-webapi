type t = Dom.relatedEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "RelatedEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "RelatedEvent";

[@get] [@return nullable] external relatedTarget: t => option(Dom.eventTarget);
