## 1.0 Changes

### Breaking Changes
* Change all `send.pipe` externals to `send`, making the whole project "t-first" (#8)
* Imported `bs-fetch` and converted it to "t-first" (#31)
* Removed deprecated APIs (#16)
* Updated `Window.getSelection` api to return an option (#15)
* Updated `Document.elementFromPoint` api to return an option and be @nullable (#35)
* Updated `getClientRects` method on `Document` and `Range` to return a `Dom.RectList.t` (#36)
* Removed `preview` from File bindings. It doesn't seem to be in any specifications. (#56)
* Updated some methods in `MutationRecord` to return nullable values (#59)
* Corrected spelling of `nextSibling` in `MutationRecord` (#59)

### Added and Updated (non-breaking)
* `WebSocket` bindings (#34)
* `Canvas2d.newPath2D()` to bind `Path2D` objects (#45)
* `IntersectionObserver` and `IntersectionObserverEntry` bindings (#27)
* `scrollToWithOptions` method to `window` (#26)
* `HtmlDocument` methods `hasFocus` and `activeElement` moved to `Document` (#41)
  * They're still available on `HtmlDocument` thanks to the `include` structure
* `StaticRange` bindings (#48)
* Added bindings for the File constructor (#56)
* Added bindings for the Blob constructor (#56)
* `DataTransfer` bindings (#51)
* `WorkerGlobalScope`, `WindowOrWorkerGlobalScope`, `WorkerNavigator`, and `WorkerLocation` bindings (#57)

### Miscellaneous
* Converted project to rescript syntax (#18)
* Added explicit values to all externals instead of using `= ""` (#40)
