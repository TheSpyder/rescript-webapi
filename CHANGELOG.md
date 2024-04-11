# Changelog

> **Tags:**
>
> - :boom: [Breaking Change]
> - :rocket: [New Feature]
> - :bug: [Bug Fix]
> - :memo: [Documentation]
> - :house: [Internal]
> - :nail_care: [Polish]

## main


#### :boom: Breaking Change

- Corrected return type of `getPropertyValue` for CSS style attributes (it's nullable and now returns an option).

#### :bug: Bug Fix

- Widened input type of `Window.getComputedStyle`, allowing subclasses of Element (such as HtmlElement).

# 0.9.1

#### :bug: Bug Fix

- Fix binding compatibility with ReScript 11, which removed `_` variable mangling. https://github.com/TheSpyder/rescript-webapi/pull/129

## 0.9.0

#### :boom: Breaking Change

- Corrected return type of `selectionStart` and `selectionEnd` for `input` and `textarea` elements. https://github.com/TheSpyder/rescript-webapi/pull/124

#### :bug: Bug Fix

- Fix compatibility with ReScript 11 uncurried mode. https://github.com/TheSpyder/rescript-webapi/pull/123

## 0.8.0

#### :rocket: New Feature

- `OffscreenCanvas` bindings. https://github.com/TheSpyder/rescript-webapi/pull/119

#### :bug: Bug Fix

- `Url.toJSON()` was emitting the wrong function name. https://github.com/TheSpyder/rescript-webapi/pull/121
- The `options` signature in `Webapi.Dom.CustomEvent`'s `makeWithOption`. https://github.com/TheSpyder/rescript-webapi/pull/122

## 0.7.0

#### :rocket: New Feature

- `Url.createObjectURLFromBlob` binding that takes a `Blob.t`. https://github.com/TheSpyder/rescript-webapi/pull/106
- `returnValue` setter for `BeforeUnloadEvent`. https://github.com/TheSpyder/rescript-webapi/pull/110
- `Webapi.FormData.makeWithHtmlForm` binding that takes a `Webapi.Dom.HtmlFormElement.t`. https://github.com/TheSpyder/rescript-webapi/pull/108
- `Canvas.toBlob` & `Canvas.toDataUrl` methods, with multiple argument variants. https://github.com/TheSpyder/rescript-webapi/pull/111

#### :bug: Bug Fix

-  `Dom.CssStyleDeclaration.setPropertyValue` was emitting the wrong function name. https://github.com/TheSpyder/rescript-webapi/pull/114

## 0.6.1

#### :rocket: New Feature

- CustomEvent Functor to make custom events with strongly typed `detail` fields. https://github.com/TheSpyder/rescript-webapi/pull/93

## 0.5.0

#### :boom: Breaking Change

- Some `Node` APIs do not trigger compile errors due to the argument swap, because both arguments were `Node` instances. This logic error can cause severe migration headaches; the following methods had named arguments added to highlight places migration is necessary. https://github.com/TheSpyder/rescript-webapi/pull/89
  - `appendChild`
  - `compareDocumentPosition`
  - `contains`
  - `insertBefore`
  - `removeChild`
  - `replaceChild`
- Updated `History.scrollRestoration` to use `auto` and `manual` instead of a boolean. https://github.com/TheSpyder/rescript-webapi/pull/88
- `PopStateEvent.state` now returns a history state type instead of an open object. https://github.com/TheSpyder/rescript-webapi/pull/88
- Updated `InputEvent.data` to return a nullable value. https://github.com/TheSpyder/rescript-webapi/pull/90

#### :rocket: New Feature

- `Canvas2d` bindings `drawImage`, `drawImageScale`, and `drawImageFull` added. https://github.com/TheSpyder/rescript-webapi/pull/83
- `InputEvent` bindings for `inputType`, `dataTransfer` and `getTargetRanges`. https://github.com/TheSpyder/rescript-webapi/pull/90
- `Node.insertAtEnd` binding (which does `parent.insertBefore(child, null)`). https://github.com/TheSpyder/rescript-webapi/pull/89

#### :house: Internal

- Deprecated `Node.isSameNode` (MDN recommends using `===` instead). https://github.com/TheSpyder/rescript-webapi/pull/89

## 0.4.1

#### :rocket: New Feature

- Added `HTMLFormControlsCollection`, `HTMLOptionsCollection`, `HTMLFieldSetElement`, `Document.forms`, `HTMLFormElement.elements`, `HTMLObjectElement`, `HTMLOptGroupElement`, `HTMLOptionElement`, `HTMLOutputElement`, `HTMLSelectElement`, `HTMLTextAreaElement`, and `RadioNodeList` bindings. https://github.com/TheSpyder/rescript-webapi/pull/73

## 0.3.2

#### :bug: Bug Fix

- `ofElement` was incorrectly returning `Dom.htmlElement` type instead of the enclosing element type. https://github.com/TheSpyder/rescript-webapi/pull/60

## 0.3.1

#### :boom: Breaking Change

- Removed `type_` from `Fetch.Request` module. It doesn't seem to be in any specifications.. https://github.com/TheSpyder/rescript-webapi/pull/67

## 0.3.0

#### :boom: Breaking Change

- Removed `preview` from File bindings. It doesn't seem to be in any specifications.. https://github.com/TheSpyder/rescript-webapi/pull/56
- Updated `MutationRecord` bindings `nextSibling`, `attributeName`, `attributeNamespace` and `oldValue` to return nullable values. https://github.com/TheSpyder/rescript-webapi/pull/59
- Corrected spelling of `nextSibling` in `MutationRecord`. https://github.com/TheSpyder/rescript-webapi/pull/59

#### :rocket: New Feature

- `StaticRange` bindings. https://github.com/TheSpyder/rescript-webapi/pull/48
- Added bindings for the File constructor. https://github.com/TheSpyder/rescript-webapi/pull/56
- Added bindings for the Blob constructor. https://github.com/TheSpyder/rescript-webapi/pull/56
- `DataTransfer` bindings. https://github.com/TheSpyder/rescript-webapi/pull/51
- `WorkerGlobalScope`, `WindowOrWorkerGlobalScope`, `WorkerNavigator`, and `WorkerLocation` bindings. https://github.com/TheSpyder/rescript-webapi/pull/57
- `Response` constructors to `Fetch` bindings. https://github.com/TheSpyder/rescript-webapi/pull/64

## 0.2.0

#### :boom: Breaking Change

- Updated `Document.elementFromPoint` binding to return a nullable value. https://github.com/TheSpyder/rescript-webapi/pull/35
- Updated `getClientRects` binding on `Document` and `Range` to return a `Dom.RectList.t`. https://github.com/TheSpyder/rescript-webapi/pull/36

#### :rocket: New Feature

- `WebSocket` bindings. https://github.com/TheSpyder/rescript-webapi/pull/34
- `Canvas2d.newPath2D()` to bind `Path2D` objects. https://github.com/TheSpyder/rescript-webapi/pull/45
- `HtmlDocument` bindings `hasFocus` and `activeElement` moved to `Document`. https://github.com/TheSpyder/rescript-webapi/pull/41
  - They're still available on `HtmlDocument` thanks to the `include` structure

#### :house: Internal

- Added explicit values to all externals instead of using `= ""`. https://github.com/TheSpyder/rescript-webapi/pull/40

## 0.1.3

#### :boom: Breaking Change

- Imported `bs-fetch` as `Webapi.Fetch` and converted it to "t-first". https://github.com/TheSpyder/rescript-webapi/pull/31

#### :house: Internal

- Converted project to rescript syntax. https://github.com/TheSpyder/rescript-webapi/pull/18

## 0.1.2

#### :rocket: New Feature

- `scrollToWithOptions` binding to `window`. https://github.com/TheSpyder/rescript-webapi/pull/26
- `IntersectionObserver` and `IntersectionObserverEntry` bindings. https://github.com/TheSpyder/rescript-webapi/pull/27

## 0.1.1

#### :boom: Breaking Change

- Changed all `send.pipe` externals to `send`, making the whole project "t-first". https://github.com/TheSpyder/rescript-webapi/pull/8
- Removed deprecated APIs. https://github.com/TheSpyder/rescript-webapi/pull/16
- Updated `Window.getSelection` binding to return an option. https://github.com/TheSpyder/rescript-webapi/pull/15
