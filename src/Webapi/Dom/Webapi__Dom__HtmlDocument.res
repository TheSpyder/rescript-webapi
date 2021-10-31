module Impl = (
  T: {
    type t
  },
) => {
  type t_htmlDocument = T.t

  @get @return(nullable)
  external body: t_htmlDocument => option<Dom.element> = "body" /* returns option HTMLBodyElement */
  @set
  external setBody: (t_htmlDocument, Dom.element) => unit = "body" /* accepth HTMLBodyElement */
  @get external cookie: t_htmlDocument => string = "cookie"
  @set external setCookie: (t_htmlDocument, string) => unit = "cookie"
  @get @return(nullable) external defaultView: t_htmlDocument => option<Dom.window> = "defaultView"
  @get external designMode: t_htmlDocument => string = "designMode"
  let designMode: t_htmlDocument => Webapi__Dom__Types.designMode = self =>
    Webapi__Dom__Types.decodeDesignMode(designMode(self))
  @set
  external setDesignMode: (t_htmlDocument, string) => unit = "designMode"
  let setDesignMode: (t_htmlDocument, Webapi__Dom__Types.designMode) => unit = (self, value) =>
    setDesignMode(self, Webapi__Dom__Types.encodeDesignMode(value))
  @get external dir: t_htmlDocument => string = "dir"
  let dir: t_htmlDocument => Webapi__Dom__Types.dir = self =>
    Webapi__Dom__Types.decodeDir(dir(self))
  @set external setDir: (t_htmlDocument, string) => unit = "dir"
  let setDir: (t_htmlDocument, Webapi__Dom__Types.dir) => unit = (self, value) =>
    setDir(self, Webapi__Dom__Types.encodeDir(value))
  @get @return(nullable) external domain: t_htmlDocument => option<string> = "domain"
  @set external setDomain: (t_htmlDocument, string) => unit = "domain"
  @get external embeds: t_htmlDocument => Dom.nodeList = "embeds"
  @get external forms: t_htmlDocument => Dom.htmlCollection = "forms"
  @get external head: t_htmlDocument => Dom.element = "head" /* returns HTMLHeadElement */
  @get external images: t_htmlDocument => Dom.htmlCollection = "images"
  @get external lastModified: t_htmlDocument => string = "lastModified"
  @get external links: t_htmlDocument => Dom.nodeList = "links"
  @get external location: t_htmlDocument => Dom.location = "location"
  @set external setLocation: (t_htmlDocument, string) => unit = "location"
  @get external plugins: t_htmlDocument => Dom.htmlCollection = "plugins"
  @get external readyState: t_htmlDocument => string = "readyState"
  let readyState: t_htmlDocument => Webapi__Dom__Types.readyState = self =>
    Webapi__Dom__Types.decodeReadyState(readyState(self))
  @get external referrer: t_htmlDocument => string = "referrer"
  @get external scripts: t_htmlDocument => Dom.htmlCollection = "scripts"
  @get external title: t_htmlDocument => string = "title"
  @set external setTitle: (t_htmlDocument, string) => unit = "title"
  @get external url: t_htmlDocument => string = "URL"

  @send external close: t_htmlDocument => unit = "close"
  @send external execCommand: (t_htmlDocument, string, bool, Js.null<string>) => bool = "execCommand"
  let execCommand: (t_htmlDocument, string, bool, option<string>) => bool = (
    self,
    command,
    show,
    value,
  ) => self->execCommand(command, show, Js.Null.fromOption(value))
  @send external getElementsByName: (t_htmlDocument, string) => Dom.nodeList = "getElementsByName"
  @send external getSelection: t_htmlDocument => Dom.selection = "getSelection"
  @send external open_: t_htmlDocument => unit = "open"
  @send external queryCommandEnabled: (t_htmlDocument, string) => bool = "queryCommandEnabled"
  @send external queryCommandIndeterm: (t_htmlDocument, string) => bool = "queryCommandIndeterm"
  @send external queryCommandSupported: (t_htmlDocument, string) => bool = "queryCommandSupported"
  @send external queryCommandValue: (t_htmlDocument, string) => string = "queryCommandValue"
  @send external write: (t_htmlDocument, string) => unit = "write"
  @send external writeln: (t_htmlDocument, string) => unit = "writeln"
}

type t = Dom.htmlDocument

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__GlobalEventHandlers.Impl({
  type t = t
})
include Webapi__Dom__Document.Impl({
  type t = t
})
include Impl({
  type t = t
})
