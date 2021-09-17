### 1.0 in progress

Done:
* Change all `send.pipe` externals to `send`, making them "t-first" (#16)
* Remove deprecated APIs
* `Window.getSelection` now returns an option, to better match the definition
* Add scrollToWithOptions to window
* Added IntersectionObserver and IntersectionObserverEntry bindings

Todo:
* Convert to rescript syntax
* Convert more input types to `node_like` and `element_like` to improve usability
* Consider switching to `namespace: true`, or otherwise improve the folder structure to avoid exposing the implementation modules
* Correct bugs, reduce how much code is generated, add missing APIs
* Switch this file to "keep a changelog" style or atlassian changesets
