### 1.0 in progress

Done:
* Change all `send.pipe` externals to `send`, making them "t-first" (#16)
* Remove deprecated APIs
* `Window.getSelection` now returns an option, to better match the definition
* Add scrollToWithOptions to window
* Convert to rescript syntax
* Added IntersectionObserver and IntersectionObserverEntry bindings

Todo:
* Convert more input types to `node_like` and `element_like` to improve usability
* Correct bugs, reduce how much code is generated, add missing APIs
* Switch to atlassian changesets (including github actions)