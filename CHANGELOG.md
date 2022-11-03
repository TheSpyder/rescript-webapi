## 1.0 Changes

### Breaking Changes
* Change all `send.pipe` externals to `send`, making the whole project "t-first" (#8)
  * Some `Node` APIs do not trigger compile errors due to the argument swap, because both arguments were `Node` instances. This logic error can cause severe migration headaches; the following methods had named arguments added to highlight places migration is necessary (#89)
  * `appendChild`
  * `compareDocumentPosition`
  * `contains`
  * `insertBefore`
  * `removeChild`
  * `replaceChild`
* Imported `bs-fetch` as `Webapi.Fetch` and converted it to "t-first" (#31)
* Removed deprecated APIs (#16)
* Removed `preview` from File bindings. It doesn't seem to be in any specifications. (#56)
* Removed `type_` from `Fetch.Request` module. It doesn't seem to be in any specifications. (#67)
* Updated `Window.getSelection` binding to return an option (#15)
* Updated `getClientRects` binding on `Document` and `Range` to return a `Dom.RectList.t` (#36)
* Updated `Document.elementFromPoint` binding to return a nullable value (#35)
* Updated `MutationRecord` bindings `nextSibling`, `attributeName`, `attributeNamespace` and `oldValue` to return nullable values (#59)
* Corrected spelling of `nextSibling` in `MutationRecord` (#59)
* Updated `History.scrollRestoration` to use `auto` and `manual` instead of a boolean (#88)
* `PopStateEvent.state` now returns a history state type instead of an open object (#88)
* Updated `InputEvent.data` to return a nullable value (#90)

### Added (non-breaking)
* `WebSocket` bindings (#34)
* `Canvas2d.newPath2D()` to bind `Path2D` objects (#45)
* `IntersectionObserver` and `IntersectionObserverEntry` bindings (#27)
* `scrollToWithOptions` binding to `window` (#26)
* `HtmlDocument` bindings `hasFocus` and `activeElement` moved to `Document` (#41)
  * They're still available on `HtmlDocument` thanks to the `include` structure
* `StaticRange` bindings (#48)
* Added bindings for the File constructor (#56)
* Added bindings for the Blob constructor (#56)
* `DataTransfer` bindings (#51)
* `WorkerGlobalScope`, `WindowOrWorkerGlobalScope`, `WorkerNavigator`, and `WorkerLocation` bindings (#57)
* `Response` constructors to `Fetch` bindings (#64)
* `HTMLFormControlsCollection`, `HTMLOptionsCollection`, `HTMLFieldSetElement`, `Document.forms`, `HTMLFormElement.elements`, `HTMLObjectElement`, `HTMLOptGroupElement`, `HTMLOptionElement`, `HTMLOutputElement`, `HTMLSelectElement`, `HTMLTextAreaElement`, and `RadioNodeList` bindings (#73)
* `Canvas2d` bindings `drawImage`, `drawImageScale`, and `drawImageFull` added (#83)
* `InputEvent` bindings for `inputType`, `dataTransfer` and `getTargetRanges` (#90)
* `Node.insertAtEnd` binding (which does `parent.insertBefore(child, null)`) (#89)
* CustomEvent Functor to make custom events with strongly typed `detail` fields (#93)
* `Url.createObjectURLFromBlob` binding that takes a `Blob.t` (#106)
* `returnValue` setter for `BeforeUnloadEvent` (#110)
* `Webapi.FormData.makeWithHtmlForm` binding that takes a `Webapi.Dom.HtmlFormElement.t` (#108)
* `Canvas.toBlob` & `Canvas.toDataUrl` methods, with multiple argument variants (#111)

### Fixed
* `ofElement` was incorrectly returning `Dom.htmlElement` type instead of the enclosing element type (#60)
*  `Dom.CssStyleDeclaration.setPropertyValue` was emitting the wrong function name (#114)

### Miscellaneous
* Converted project to rescript syntax (#18)
* Added explicit values to all externals instead of using `= ""` (#40)
* Deprecated `Node.isSameNode` (MDN recommends using `===` instead) (#89)
