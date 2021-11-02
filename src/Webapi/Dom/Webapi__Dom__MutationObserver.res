type t = Dom.mutationObserver

@new external make: ((array<Dom.mutationRecord>, t) => unit) => t = "MutationObserver"

@send external observe: (t, Dom.node_like<'a>, {..}) => unit = "observe"
@send external disconnect: t => unit = "disconnect"
@send external takeRecords: t => array<Dom.mutationRecord> = "takeRecords"
