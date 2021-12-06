type t

type staticRangeInit<'a, 'b> = {
  startContainer: Dom.node_like<'a>,
  startOffset: int,
  endContainer: Dom.node_like<'b>,
  endOffset: int
}

@new external make: staticRangeInit<'a, 'b> => t = "StaticRange"

@get external collapsed: t => bool = "collapsed"
@get external endContainer: t => Dom.node = "endContainer"
@get external endOffset: t => int = "endOffset"
@get external startContainer: t => Dom.node = "startContainer"
@get external startOffset: t => int = "startOffset"
