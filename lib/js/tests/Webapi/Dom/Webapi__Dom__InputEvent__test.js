'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Webapi__Dom__InputEvent = require("../../../src/Webapi/Dom/Webapi__Dom__InputEvent.js");

var $$event = new InputEvent("my-event");

var bubbles = $$event.bubbles;

var cancelable = $$event.cancelable;

var composed = $$event.composed;

var currentTarget = $$event.currentTarget;

var defaultPrevented = $$event.defaultPrevented;

var eventPhase = Curry._1(Webapi__Dom__InputEvent.eventPhase, $$event);

var target = $$event.target;

var timeStamp = $$event.timeStamp;

var type_ = $$event.type;

var isTrusted = $$event.isTrusted;

$$event.preventDefault();

$$event.stopImmediatePropagation();

$$event.stopPropagation();

$$event.getTargetRanges();

var match = $$event.inputType;

if (match === "formatItalic") {
  console.log("valid input event type formatItalic");
} else if (match === "deleteByCut") {
  console.log("valid input event type deleteByCut");
} else if (match === "formatSuperscript") {
  console.log("valid input event type formatSuperscript");
} else if (match === "formatSetInlineTextDirection") {
  console.log("valid input event type formatSetInlineTextDirection");
} else if (match === "formatIndent") {
  console.log("valid input event type formatIndent");
} else if (match === "formatStrikeThrough") {
  console.log("valid input event type formatStrikeThrough");
} else if (match === "deleteContentBackward") {
  console.log("valid input event type deleteContentBackward");
} else if (match === "formatJustifyRight") {
  console.log("valid input event type formatJustifyRight");
} else if (match === "formatFontColor") {
  console.log("valid input event type formatFontColor");
} else if (match === "insertFromDrop") {
  console.log("valid input event type insertFromDrop");
} else if (match === "historyRedo") {
  console.log("valid input event type historyRedo");
} else if (match === "historyUndo") {
  console.log("valid input event type historyUndo");
} else if (match === "deleteContentForward") {
  console.log("valid input event type deleteContentForward");
} else if (match === "insertReplacementText") {
  console.log("valid input event type insertReplacementText");
} else if (match === "insertOrderedList") {
  console.log("valid input event type insertOrderedList");
} else if (match === "deleteByDrag") {
  console.log("valid input event type deleteByDrag");
} else if (match === "deleteSoftLineForward") {
  console.log("valid input event type deleteSoftLineForward");
} else if (match === "insertFromYank") {
  console.log("valid input event type insertFromYank");
} else if (match === "formatUnderline") {
  console.log("valid input event type formatUnderline");
} else if (match === "deleteContent") {
  console.log("valid input event type deleteContent");
} else if (match === "insertTranspose") {
  console.log("valid input event type insertTranspose");
} else if (match === "formatJustifyFull") {
  console.log("valid input event type formatJustifyFull");
} else if (match === "formatBold") {
  console.log("valid input event type formatBold");
} else if (match === "insertUnorderedList") {
  console.log("valid input event type insertUnorderedList");
} else if (match === "formatJustifyLeft") {
  console.log("valid input event type formatJustifyLeft");
} else if (match === "insertCompositionText") {
  console.log("valid input event type insertCompositionText");
} else if (match === "formatSubscript") {
  console.log("valid input event type formatSubscript");
} else if (match === "insertParagraph") {
  console.log("valid input event type insertParagraph");
} else if (match === "deleteSoftLineBackward") {
  console.log("valid input event type deleteSoftLineBackward");
} else if (match === "formatFontName") {
  console.log("valid input event type formatFontName");
} else if (match === "deleteHardLineForward") {
  console.log("valid input event type deleteHardLineForward");
} else if (match === "formatOutdent") {
  console.log("valid input event type formatOutdent");
} else if (match === "formatBackColor") {
  console.log("valid input event type formatBackColor");
} else if (match === "deleteWordForward") {
  console.log("valid input event type deleteWordForward");
} else if (match === "deleteHardLineBackward") {
  console.log("valid input event type deleteHardLineBackward");
} else if (match === "insertFromPaste") {
  console.log("valid input event type insertFromPaste");
} else if (match === "insertHorizontalRule") {
  console.log("valid input event type insertHorizontalRule");
} else if (match === "deleteWordBackward") {
  console.log("valid input event type deleteWordBackward");
} else if (match === "insertLink") {
  console.log("valid input event type insertLink");
} else if (match === "insertLineBreak") {
  console.log("valid input event type insertLineBreak");
} else if (match === "insertText") {
  console.log("valid input event type insertText");
} else if (match === "formatJustifyCenter") {
  console.log("valid input event type formatJustifyCenter");
} else if (match === "formatSetBlockTextDirection") {
  console.log("valid input event type formatSetBlockTextDirection");
} else if (match === "deleteEntireSoftLine") {
  console.log("valid input event type deleteEntireSoftLine");
} else if (match === "insertFromPasteAsQuotation") {
  console.log("valid input event type insertFromPasteAsQuotation");
} else {
  console.log("valid input event type formatRemove");
}

var d = $$event.dataTransfer;

if (d == null) {
  console.log("no data transfer");
} else {
  console.log(d);
}

exports.$$event = $$event;
exports.bubbles = bubbles;
exports.cancelable = cancelable;
exports.composed = composed;
exports.currentTarget = currentTarget;
exports.defaultPrevented = defaultPrevented;
exports.eventPhase = eventPhase;
exports.target = target;
exports.timeStamp = timeStamp;
exports.type_ = type_;
exports.isTrusted = isTrusted;
/* event Not a pure module */
