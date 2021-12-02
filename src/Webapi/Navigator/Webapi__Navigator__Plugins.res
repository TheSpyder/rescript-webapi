/**
 * Spec: https://html.spec.whatwg.org/multipage/system-state.html#navigatorplugins
 */

// deprecated
// module rec Plugin: {
//   type t
//   let name: t => string
//   let description: t => string
//   let filename: t => string
//   let length: t => float
//   let item: (t, int) => option<MimeType.t>
//   let namedItem: (t, string) => option<MimeType.t>
// } = {
//   type t
//   @get external name: t => string = "name"
//   @get external description: t => string = "description"
//   @get external filename: t => string = "filename"
//   @get external length: t => float = "length"
//   @return(nullable) @send external item: (t, int) => option<MimeType.t> = "item"
//   @return(nullable) @send external namedItem: (t, string) => option<MimeType.t> = "namedItem"
// }
// and MimeType: {
//   type t
//   let _type: t => string
//   let description: t => string
//   let suffixes: t => string
//   let enabledPlugin: t => Plugin.t
// } = {
//   type t
//   @get external _type: t => string = "type"
//   @get external description: t => string = "description"
//   @get external suffixes: t => string = "suffixes"
//   @get external enabledPlugin: t => Plugin.t = "enabledPlugin"
// }

// module MimeTypeArray = {
//   type t = array<MimeType.t>
//   @get external length: t => float = "length"
//   @send @return(nullable) external item: (t, int) => option<MimeType.t> = "item"
//   @send @return(nullable) external namedItem: (t, string) => option<MimeType.t> = "namedItem"
// }

// module PluginArray = {
//   type t = array<Plugin.t>
//   @send external refresh: t => unit = "refresh"
//   @get external length: t => float = "length"
//   @send @return(nullable) external item: (t, int) => option<Plugin.t> = "item"
//   @send @return(nullable) external namedItem: (t, string) => option<Plugin.t> = "namedItem"
// }

module Impl = (
  T: {
    type t
  },
) => {
  type t_navigatorPlugins = T.t

  // deprecated
  // @get external plugins: t_navigatorPlugins => PluginArray.t = "plugins";
  // @get external mimeTypes: t_navigatorPlugins => MimeTypeArray.t = "mimeTypes";

  @send external javaEnabled: t_navigatorPlugins => bool = "javaEnabled"
  @get external pdfViewerEnabled: t_navigatorPlugins => bool = "pdfViewerEnabled"
}
