/* Mixin */
module Impl = (
  T: {
    type t
  },
) => {
  @get external children: T.t => Dom.htmlCollection = "children"
  @get @return(nullable) external firstElementChild: T.t => option<Dom.element> = "firstElementChild"
  @get @return(nullable) external lastElementChild: T.t => option<Dom.element> = "lastElementChild"
  @get external childElementCount: T.t => int = "childElementCount"
  @send @return(nullable) external querySelector: (T.t, string) => option<Dom.element> = "querySelector"
  @send external querySelectorAll: (T.t, string) => Dom.nodeList = "querySelectorAll"
}
