type t = Dom.documentType;

include Webapi__Dom__Node.Impl({
  type nonrec t = t;
});
include Webapi__Dom__EventTarget.Impl({
  type nonrec t = t;
});
include Webapi__Dom__ChildNode.Impl({
  type nonrec t = t;
});

[@get] external name: t => string;
[@get] external publicId: t => string;
[@get] external systemId: t => string;
