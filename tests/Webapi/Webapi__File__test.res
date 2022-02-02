open Webapi.File

let test_file: t = make([Webapi.Blob.stringToBlobPart("hello")], "hello.txt")
let test_lastModified: float = test_file->lastModified
let test_name: string = test_file->name
let test_filePropertyBag: filePropertyBag = makeFilePropertyBag(~endings=#transparent, ~_type="text/plain", ~lastModified=123.0, ())
let test_filePropertyBagNone: filePropertyBag = makeFilePropertyBag()
let test_makeWithOptions: t = makeWithOptions([Webapi.Blob.stringToBlobPart("hello")], "hello.txt", makeFilePropertyBag(~_type="text/plain", ()))
