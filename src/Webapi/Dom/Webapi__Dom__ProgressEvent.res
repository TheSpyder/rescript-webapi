type t = Dom.progressEvent

include Webapi__Dom__Event.Impl({
  type t = t
})

@new external make: string => t = "ProgressEvent"
@new external makeWithOptions: (string, {..}) => t = "ProgressEvent"

@get external lengthComputable: t => bool = "lengthComputable"
@get external loaded: t => int = "loaded"
@get external total: t => int = "total"
