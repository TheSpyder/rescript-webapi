open Webapi.Dom;
open NodeList;

let items = document->Document.querySelectorAll(".item");

items->forEach((item, _) => Js.log(item));
