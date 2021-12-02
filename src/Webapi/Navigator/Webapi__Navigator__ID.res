/**
 * Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorid
 */

module Impl = (
  T: {
    type t
  },
) => {
  type t_navigatorId = T.t

  // Deprecated attributes according to MDN
  // @get external appCodeName: t_navigatorId => string = "appCodeName" // constant "Mozilla"
  // @get external appName: t_navigatorId => string = "appName" // constant "Netscape"
  // @get external appVersion: t_navigatorId => string = "appVersion"
  // @get external platform: t_navigatorId => string = "platform"
  // @get external product: t_navigatorId => string = "product" // constant "Gecko"
  // @get external productSub: t_navigatorId => string = "productSub"
  // @get external vendorSub: t_navigatorId => string = "vendorSub" // constant ""

  @get external userAgent: t_navigatorId => string = "userAgent"
  @get external vendor: t_navigatorId => string = "vendor"

  // only supported in firefox / deprecated
  // @send external taintEnabled: t_navigatorId => bool = "taintEnabled"
  // @get external oscpu: t_navigatorId => string = "oscpu"
}
