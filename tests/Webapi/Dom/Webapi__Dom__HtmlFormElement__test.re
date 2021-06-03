open Fetch.FormData;
open Dom2.HtmlFormElement;

let test_data = formElement => formElement->data |> get("foo");
