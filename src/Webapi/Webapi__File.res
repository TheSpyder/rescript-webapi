type t

@@text("{1 Blob superclass}")

include Webapi__Blob.Impl({
  type t = t
})

@@text("{1 File class}")

@get external lastModified: t => float = "lastModified"

// [@new] external make: ... = "File";

@get external name: t => string = "name"

@get external preview: t => string = "preview"
