module URLSearchParams = {
  type t

  @new external make: string => t = "URLSearchParams"
  @new external makeWithDict: Js.Dict.t<string> => t = "URLSearchParams"
  @new external makeWithArray: array<(string, string)> => t = "URLSearchParams"
  @send external append: (t, string, string) => unit = "append"
  @send external delete: (t, string) => unit = "delete"
  @send external entries: t => Js.Array.array_like<(string, string)> = "entries"
  @send external forEach: (t, @uncurry (string, string) => unit) => unit = "forEach"
  @return(nullable) @send external get: (t, string) => option<string> = "get"
  @send external getAll: (t, string) => array<string> = "getAll"
  @send external has: (t, string) => bool = "has"
  @send external keys: t => Js.Array.array_like<string> = "keys"
  @send external set: (t, string, string) => unit = "set"
  @send external sort: t => unit = "sort"
  @send external toString: t => string = "toString"
  @send external values: t => Js.Array.array_like<string> = "values"
}

type t

@new external make: string => t = "URL"

@new external makeWith: (string, ~base: string) => t = "URL"

@get external hash: t => string = "hash"
@set external setHash: (t, string) => unit = "hash"
@get external host: t => string = "host"
@set external setHost: (t, string) => unit = "host"
@get external hostname: t => string = "hostname"
@set external setHostname: (t, string) => unit = "hostname"
@get external href: t => string = "href"
@set external setHref: (t, string) => unit = "href"
@get external origin: t => string = "origin"
@get external password: t => string = "password"
@set external setPassword: (t, string) => unit = "password"
@get external pathname: t => string = "pathname"
@set external setPathname: (t, string) => unit = "pathname"
@get external port: t => string = "port"
@set external setPort: (t, string) => unit = "port"
@get external protocol: t => string = "protocol"
@set external setProtocol: (t, string) => unit = "protocol"
@get external search: t => string = "search"
@set external setSearch: (t, string) => unit = "search"
@get external searchParams: t => URLSearchParams.t = "searchParams"
@get external username: t => string = "username"
@set external setUsername: (t, string) => unit = "username"
@get external toJson: t => string = "toJson"

@val @scope("URL") external createObjectURL: Webapi__File.t => string = "createObjectURL"
@val @scope("URL") external createObjectURLFromBlob: Webapi__Blob.t => string = "createObjectURL"
@val @scope("URL") external revokeObjectURL: string => unit = "revokeObjectURL"
