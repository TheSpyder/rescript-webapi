/* Mixin */
module Impl = (
  T: {
    type t
  },
) => {
  @send external remove: T.t => unit = "remove"
}
