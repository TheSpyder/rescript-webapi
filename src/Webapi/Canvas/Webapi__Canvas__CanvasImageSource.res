@unboxed
type t = HtmlImageElement(Webapi__Dom__HtmlImageElement.t)

let ofImage = (image: Webapi__Dom__HtmlImageElement.t): t => {
  image->HtmlImageElement
}
