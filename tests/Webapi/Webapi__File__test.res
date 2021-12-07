open Webapi.File

let test_lastModified = file => file->lastModified->Js.log
let test_name = file => file->name->Js.log
let test_filePropertyBag: filePropertyBag = makeFilePropertyBag(~endings=#transparent, ~_type="text/plain", ~lastModified=123.0, ())
let test_filePropertyBagNone: filePropertyBag = makeFilePropertyBag()
let test_make: t = make([Webapi.Blob.stringToBlobPart("hello")], "hello.txt")
let test_makeWithOptions: t = makeWithOptions([Webapi.Blob.stringToBlobPart("hello")], "hello.txt", makeFilePropertyBag(~_type="text/plain", ()))
