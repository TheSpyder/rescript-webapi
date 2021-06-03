open Dom2;
open DomTokenList;

let tlist = document->Document.createElement("div")->Element.classList;

let _ = tlist->length;
let _ = tlist->item(3);

tlist->add("my-class");
tlist->addMany([|"my-class", "my-other-class"|]);
let _ = tlist->contains("my-class");
tlist->forEach((item, _) => print_endline(item));
tlist->remove("my-class");
tlist->removeMany([|"my-class", "my-other-class"|]);
tlist->replace("my-class", "my-other-class");
let _ = tlist->supports("my-class");
let _ = tlist->toggle("my-class");
let _ = tlist->toggleForced("my-class");
let _ = tlist->toString;
let _ = tlist->value;
let _ = tlist->setValue("foo");
