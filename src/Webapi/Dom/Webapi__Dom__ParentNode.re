/* Mixin */
module Impl = (T: {type t;}) => {
  [@get] external children : T.t => Dom.htmlCollection = "";
  [@get] [@return nullable] external firstElementChild : T.t => option(Dom.element) = "";
  [@get] [@return nullable] external lastElementChild : T.t => option(Dom.element) = "";
  [@get] external childElementCount : T.t => int = "";
  [@send] [@return nullable] external querySelector: T.t => string => option(Dom.element) = "";
  [@send] external querySelectorAll: T.t => string => Dom.nodeList = "";
};
