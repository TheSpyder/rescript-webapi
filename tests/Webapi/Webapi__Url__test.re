open Url;

let params = URLSearchParams.make("key1=value1&key2=value2");
params->URLSearchParams.forEach(Js.log2);
let test_entries = params => params->URLSearchParams.entries->Js.Array.from;
Js.log(test_entries(params));
