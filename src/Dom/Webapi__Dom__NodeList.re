type t = Dom.nodeList;

[@val] external toArray: t => array(Dom.node) = "Array.prototype.slice.call";

[@send] external forEach: (t, (Dom.node, int) => unit) => unit;

[@get] external length: t => int;

[@send] [@return nullable] external item: (t, int) => option(Dom.node);
