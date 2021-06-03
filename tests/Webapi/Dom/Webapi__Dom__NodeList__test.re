open Dom2;
open NodeList;

let items = document->Document.querySelectorAll(".item");

items->forEach((item, _) => Js.log(item));
