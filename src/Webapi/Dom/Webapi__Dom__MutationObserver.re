type t = Dom.mutationObserver;

[@new] external make : ((array(Dom.mutationRecord), t) => unit) => t = "MutationObserver";

[@send]  external observe: (t, Dom.node_like('a), Js.t({..})) => unit = "";
[@send] external disconnect: t => unit = "";
[@send] external takeRecords: t => array(Dom.mutationRecord) = "";
