open Webapi.Dom

// verify `ofElement` returns the correct type
@val external element: Element.t = "document.body"

switch (element->HtmlInputElement.ofElement) {
| Some(input) =>
  HtmlInputElement.focus(input);
  HtmlInputElement.select(input);
| None => ()
};