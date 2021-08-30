module URLSearchParams = {
  type t

  @new external make: string => t = "URLSearchParams"
  @new external makeWithDict: Js.Dict.t<string> => t = "URLSearchParams"
  @new external makeWithArray: array<(string, string)> => t = "URLSearchParams"
  @send external append: (t, string, string) => unit = ""
  @send external delete: (t, string) => unit = ""
  @send external entries: t => Js.Array.array_like<(string, string)> = ""
  @send external forEach: (t, @uncurry (string, string) => unit) => unit = ""
  @return(nullable) @send external get: (t, string) => option<string> = ""
  @send external getAll: (t, string) => array<string> = ""
  @send external has: (t, string) => bool = ""
  @send external keys: t => Js.Array.array_like<string> = ""
  @send external set: (t, string, string) => unit = ""
  @send external sort: t => unit = ""
  @send external toString: t => string = ""
  @send external values: t => Js.Array.array_like<string> = ""
}

type t

@new external make: string => t = "URL"

/** @since 0.19.0 */ @new external makeWith: (string, ~base: string) => t = "URL"

@get external hash: t => string = ""
@set external setHash: (t, string) => unit = "hash"
@get external host: t => string = ""
@set external setHost: (t, string) => unit = "host"
@get external hostname: t => string = ""
@set external setHostname: (t, string) => unit = "hostname"
@get external href: t => string = ""
@set external setHref: (t, string) => unit = "href"
@get external origin: t => string = ""
@get external password: t => string = ""
@set external setPassword: (t, string) => unit = "password"
@get external pathname: t => string = ""
@set external setPathname: (t, string) => unit = "pathname"
@get external port: t => string = ""
@set external setPort: (t, string) => unit = "port"
@get external protocol: t => string = ""
@set external setProtocol: (t, string) => unit = "protocol"
@get external search: t => string = ""
@set external setSearch: (t, string) => unit = "search"
@get external searchParams: t => URLSearchParams.t = ""
@get external username: t => string = ""
@set external setUsername: (t, string) => unit = "username"
@get external toJson: t => string = ""

@val @scope("URL") external createObjectURL: Webapi__File.t => string = ""
@val @scope("URL") external revokeObjectURL: string => unit = ""
