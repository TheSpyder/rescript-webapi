type t

@@text("{1 Blob superclass}")

include Webapi__Blob.Impl({
  type t = t
})


type filePropertyBag

@obj
external makeFilePropertyBag: (
  ~endings: Webapi__Blob.endingType=?,
  ~_type: string=?,
  ~lastModified: float=?,
  unit,
) => filePropertyBag = ""

@@text("{1 File class}")

@new external make: (array<Webapi__Blob.blobPart>, string) => t = "File"
@new external makeWithOptions: (array<Webapi__Blob.blobPart>, string, filePropertyBag) => t = "File";

@get external lastModified: t => float = "lastModified"

@get external name: t => string = "name"
