open Webapi.Dom
open DomTokenList

let tlist: t = document->Document.createElement("div")->Element.classList

let length: int = tlist->length
let item: option<string> = tlist->item(3)

tlist->add("my-class")
tlist->addMany(["my-class", "my-other-class"])
let contains: bool = tlist->contains("my-class")
tlist->forEach((item, _) => print_endline(item))
tlist->remove("my-class")
tlist->removeMany(["my-class", "my-other-class"])
tlist->replace("my-class", "my-other-class")
let supports: bool = tlist->supports("my-class")
let toggle: bool = tlist->toggle("my-class")
let toggleForced: bool = tlist->toggleForced("my-class", false)
let toString: string = tlist->toString
let value: string = tlist->value
let setValue: unit = tlist->setValue("foo")