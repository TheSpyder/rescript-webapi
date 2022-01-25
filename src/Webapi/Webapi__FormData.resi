module EntryValue: {
  @ocaml.doc(" This represents a
        {{: https://developer.mozilla.org/en-US/docs/Web/API/FormDataEntryValue} FormDataEntryValue}. ")
  type t

  @ocaml.doc(" [classify entryValue] safely casts the [entryValue] to its
        correct runtime type. ")
  let classify: t => [> #String(string) | #File(Webapi__File.t)]
}

type t

@new external make: unit => t = "FormData"
@send external append: (t, string, string) => unit = "append"
@send external delete: (t, string) => unit = "delete"
@send external get: (t, string) => option<EntryValue.t> = "get"
@send external getAll: (t, string) => array<EntryValue.t> = "getAll"
@send external set: (t, string, string) => unit = "set"
@send external has: (t, string) => bool = "has"
@send external keys: t => Webapi__Iterator.t<string> = "keys"
@send external values: t => Webapi__Iterator.t<EntryValue.t> = "values"

@send @ocaml.doc(" This is for React Native compatibility purposes ")
external appendObject: (t, string, {..}, ~filename: string=?, unit) => unit = "append"

@send external appendBlob: (t, string, Webapi__Blob.t, ~filename: string=?, unit) => unit = "append"

@send external appendFile: (t, string, Webapi__File.t, ~filename: string=?, unit) => unit = "append"

@send @ocaml.doc(" This is for React Native compatibility purposes ")
external setObject: (t, string, {..}, ~filename: string=?, unit) => unit = "set"

@send external setBlob: (t, string, Webapi__Blob.t, ~filename: string=?, unit) => unit = "set"

@send external setFile: (t, string, Webapi__File.t, ~filename: string=?, unit) => unit = "set"

@send external entries: t => Webapi__Iterator.t<(string, EntryValue.t)> = "entries"
