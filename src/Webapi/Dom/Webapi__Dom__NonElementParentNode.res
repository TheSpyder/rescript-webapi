/* Mixin */
module Impl = (
  T: {
    type t
  },
) => {
  @send @return(nullable) external getElementById: (T.t, string) => option<Dom.element> = "getElementById"
}
