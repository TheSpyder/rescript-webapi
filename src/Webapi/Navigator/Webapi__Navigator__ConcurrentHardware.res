/**
 * Spec: https://html.spec.whatwg.org/multipage/workers.html#navigatorconcurrenthardware
 */

module Impl = (
  T: {
    type t
  },
) => {
  type t_navigatorConcurrentHardware = T.t

  @get external hardwareConcurrency: t_navigatorConcurrentHardware => float = "hardwareConcurrency"
}
