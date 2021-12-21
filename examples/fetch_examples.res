open Webapi
open Promise

let _ = {
  Fetch.fetch("/api/hellos/1")
  ->then(Fetch.Response.text)
  ->then(text => print_endline(text)->resolve)
}

let _ = {
  Fetch.fetchWithInit("/api/hello", Fetch.RequestInit.make(~method="POST", ()))
  ->then(Fetch.Response.text)
  ->then(text => print_endline(text)->resolve)
}

let _ = {
  Fetch.fetch("/api/fruit")
  /* assume server returns `["apple", "banana", "pear", ...]` */
  ->then(Fetch.Response.json)
  ->then(json => Js.Json.decodeArray(json)->resolve)
  ->then(opt => Belt.Option.getExn(opt)->resolve)
  ->then(items =>
    items->Js.Array2.map(item => item->Js.Json.decodeString->Belt.Option.getExn)->resolve
  )
}

/* makes a post request with the following json payload { hello: "world" } */
let _ = {
  let payload = Js.Dict.empty()
  Js.Dict.set(payload, "hello", Js.Json.string("world"))
  Fetch.fetchWithInit(
    "/api/hello",
    Fetch.RequestInit.make(
      ~method="POST",
      ~body=Fetch.BodyInit.make(Js.Json.stringify(Js.Json.object_(payload))),
      ~headers=Fetch.HeadersInit.make({"Content-Type": "application/json"}),
      (),
    ),
  )->then(Fetch.Response.json)
}

let _ = {
  let formData = Webapi.FormData.make()
  Webapi.FormData.appendObject(
    formData,
    "image0",
    {"type": "image/jpg", "uri": "path/to/it", "name": "image0.jpg"},
    (),
  )

  Fetch.fetchWithInit(
    "/api/upload",
    Fetch.RequestInit.make(
      ~method="POST",
      ~body=Fetch.BodyInit.makeWithFormData(formData),
      ~headers=Fetch.HeadersInit.make({"Accept": "*"}),
      (),
    ),
  )->then(Fetch.Response.json)
}

let _ = {
  let controller = Fetch.AbortController.make()

  let _ = Fetch.fetchWithInit("/api/fruit", Fetch.RequestInit.make(~signal=controller.signal, ()))

  controller->Fetch.AbortController.abort
}
