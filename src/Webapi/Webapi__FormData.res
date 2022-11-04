module EntryValue = {
  type t

  let classify: t => [> #String(string) | #File(Webapi__File.t)] = t =>
    if Js.typeof(t) == "string" {
      #String(Obj.magic(t))
    } else {
      #File(Obj.magic(t))
    }
}

type t

@new external make: unit => t = "FormData"
// to make from a HTML form, use `Webapi.Dom.HtmlFormElement.data`

@send external append: (t, string, string) => unit = "append"
@send external delete: (t, string) => unit = "delete"
@send external get: (t, string) => option<EntryValue.t> = "get"
@send external getAll: (t, string) => array<EntryValue.t> = "getAll"
@send external set: (t, string, string) => unit = "set"
@send external has: (t, string) => bool = "has"

@send external appendObject: (t, string, {..}, ~filename: string=?, unit) => unit = "append"

@send external appendBlob: (t, string, Webapi__Blob.t, ~filename: string=?, unit) => unit = "append"

@send external appendFile: (t, string, Webapi__File.t, ~filename: string=?, unit) => unit = "append"

@send external setObject: (t, string, {..}, ~filename: string=?, unit) => unit = "set"

@send external setBlob: (t, string, Webapi__Blob.t, ~filename: string=?, unit) => unit = "set"

@send external setFile: (t, string, Webapi__File.t, ~filename: string=?, unit) => unit = "set"

@send external keys: t => Webapi__Iterator.t<string> = "keys"
@send external values: t => Webapi__Iterator.t<EntryValue.t> = "values"
@send external entries: t => Webapi__Iterator.t<(string, EntryValue.t)> = "entries"
