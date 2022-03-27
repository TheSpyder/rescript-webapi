# rescript-webapi

[![npm](https://img.shields.io/npm/v/rescript-webapi.svg)](https://npmjs.org/rescript-webapi)

Bindings to the DOM and other browser-specific web APIs.

## Stability

This project is in the process of being forked; until the library reaches 1.0, expect major breaking changes to the API. See the [1.0 project](https://github.com/tinymce/rescript-webapi/projects/1) for the current progress towards that goal.

## Installation

```
npm install rescript-webapi
```

Then add `rescript-webapi` to `bs-dependencies` in your `bsconfig.json`. A minimal example:

```
{
  "name": "my-thing",
  "sources": "src",
  "bs-dependencies": ["rescript-webapi"]
}
```

## Usage

See the [examples folder](https://github.com/tinymce/rescript-webapi/tree/main/examples).

Please only use the modules exposed through the toplevel module `Webapi`, for example `Webapi.Dom.Element`. In particular, don't use the 'flat' modules like `Webapi__Dom__Element` as these are considered private and are not guaranteed to be backwards-compatible.

## Some notes on the DOM API

The DOM API is mostly organized into interfaces and relies heavily on inheritance. The ergonomics of the API is also heavily dependent on dynamic typing, which makes it somewhat challenging to implement a thin binding layer that is both safe and ergonomic. To achieve this we employ subtyping and implementation inheritance, concepts which aren't very idiomatic to OCaml (or Reason), but all the more beneficial to understand in order to be able to use these bindings effectively.

### Subtyping

The Dom types, and the relationships between them, are actually defined in the `Dom` module that ships with `bs-platform` ([Source code](https://github.com/glennsl/bucklescript/blob/master/jscomp/others/dom.mli)), where you'll find a bunch of types that look like this:

```rescript
type _element<'a>;
type element_like<'a> = node_like<_element<'a>>;
type element = element_like<_baseClass>;
```

This is subtyping implemented with abstract types and phantom arguments. The details of how this works isn't very important (but see [#23](https://github.com/reasonml-community/bs-webapi-incubator/pull/23) for a detailed explanation of how exactly this trickery works) in order to just use them, but there are a few things you should know:

* If you expand the alias of a concrete DOM type, you'll discover it's actually a list of abstract types. e.g. `element` expands to `_baseClass _element _node _eventTarget_like` This means `element` is a subtype of `_element`, `_node` and `_eventTarget_like`.
* The `_like` type are "open" (because they have a type variable). This means that a function accepting an `'a element_like` will accept any "supertype" of `element_like`. A function accepting just an `element` will only accept an `element` (Technically `element` is actually a "supertype" of `element_like` too).

This system works exceptionally well, but has one significant flaw: It makes type errors even more complicated than they normally are. If you know what to look for it's not that bad, but unfortunately the formatting of these errors don't make looking for it any easier.

### Implementation inheritance

If you've looked through the source code a bit, you've likely come across code like this:

```rescript
include Webapi__Dom__EventTarget.Impl({ type t = t });
include Webapi__Dom__Node.Impl({ type t = t });
include Webapi__Dom__ParentNode.Impl({ type t = t });
include Webapi__Dom__NonDocumentTypeChildNode.Impl({ type t = t });
include Webapi__Dom__ChildNode.Impl({ type t = t });
include Webapi__Dom__Slotable.Impl({ type t = t });
include Impl({ type t = t });
```

This is the implementation inheritance. Each "inheritable" module defines an "Impl" module where all its exported functions are defined. `include Webapi__Dom__Node.Impl({ type t = t });` means that all the functions in `Webapi__Dom__Node.Impl` should be included in this module, but with the `t` type of that module replaced by the `t` type of this one. And that's it, it now has all the functions.

Implementation inheritance is used instead of subtyping to make it easier to understand which functions operate on any given "subject". If you have an `element` and you need to use a function defined in `Node`, let's say `removeChild` you cannot just use `Node.removeChild`. Instead you need to use `Element.removeChild`, which you can since `Element` inherits from `Node`. As a general rule, always use the function in the module corresponding to the type you have. You'll find this makes it very easy to see what types you're dealing with just by reading the code.

## Changes

See [CHANGELOG.md](CHANGELOG.md).

## License and Credits

All code is licensed as MIT. See [LICENSE](LICENSE).

This project was forked from [bs-webapi](https://github.com/reasonml-community/bs-webapi-incubator) after it was mostly abandoned. We took the opportunity to make major changes to the API and bring it up to modern ReScript development practices by renaming it.

This project also forks [bs-fetch](https://github.com/reasonml-community/bs-fetch) and includes fetch as a first-class concept in the webapi.

Primary development on this project is sponsored by [Tiny](https://github.com/tinymce/).
