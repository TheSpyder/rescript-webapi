type t = Dom.inputEvent

include Webapi__Dom__Event.Impl({
  type t = t
})
include Webapi__Dom__UiEvent.Impl({
  type t = t
})

@new external make: string => t = "InputEvent"
@new external makeWithOptions: (string, {..}) => t = "InputEvent"

/*
  Input event type list:
  https://rawgit.com/w3c/input-events/v1/index.html#interface-InputEvent-Attributes
*/
type inputType = [
  | #deleteByCut
  | #deleteByDrag
  | #deleteContent
  | #deleteContentBackward
  | #deleteContentForward
  | #deleteEntireSoftLine
  | #deleteHardLineBackward
  | #deleteHardLineForward
  | #deleteSoftLineBackward
  | #deleteSoftLineForward
  | #deleteWordBackward
  | #deleteWordForward
  | #formatBackColor
  | #formatBold
  | #formatFontColor
  | #formatFontName
  | #formatIndent
  | #formatItalic
  | #formatJustifyCenter
  | #formatJustifyFull
  | #formatJustifyLeft
  | #formatJustifyRight
  | #formatOutdent
  | #formatRemove
  | #formatSetBlockTextDirection
  | #formatSetInlineTextDirection
  | #formatStrikeThrough
  | #formatSubscript
  | #formatSuperscript
  | #formatUnderline
  | #historyRedo
  | #historyUndo
  | #insertCompositionText
  | #insertFromDrop
  | #insertFromPaste
  | #insertFromPasteAsQuotation
  | #insertFromYank
  | #insertHorizontalRule
  | #insertLineBreak
  | #insertLink
  | #insertOrderedList
  | #insertParagraph
  | #insertReplacementText
  | #insertText
  | #insertTranspose
  | #insertUnorderedList
]

@get @return(nullable) external data: t => option<string> = "data"
@get @return(nullable) external dataTransfer: t => option<Dom.dataTransfer> = "dataTransfer"
@get external inputType: t => inputType = "inputType"
@get external isComposing: t => bool = "isComposing"

@send external getTargetRanges: t => array<Dom.range> = "getTargetRanges"
