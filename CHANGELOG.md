### 1.0 in progress

Done:
* Change all `send.pipe` externals to `send`, making them "t-first" (#8)
* Remove deprecated APIs (#16)
* `Window.getSelection` now returns an option, to better match the definition (#15)
* Added `scrollToWithOptions` to `window` (#26)
* Converted to rescript syntax (#18)
* Added `IntersectionObserver` and `IntersectionObserverEntry` bindings (#27)
* Imported `bs-fetch` and converted it to "t-first" (#31)

Todo:
* Convert more input types to `node_like` and `element_like` to improve usability
* Correct bugs, reduce how much code is generated, add missing APIs
* Switch to atlassian changesets (including github actions)