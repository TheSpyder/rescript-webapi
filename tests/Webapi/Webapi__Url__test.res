open Webapi.Url

let params: URLSearchParams.t = URLSearchParams.make("key1=value1&key2=value2")
params->URLSearchParams.forEach((prim0,prim1) => Js.log2(prim0,prim1))
let test_entries: array<(string, string)> = params->URLSearchParams.entries->Js.Array.from
