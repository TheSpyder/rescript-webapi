open Dom2;
open Selection;

let node = document->Document.createElement("strong");
let sel =
  document->Document.asHtmlDocument->TestHelpers.unsafelyUnwrapOption->HtmlDocument.getSelection;

let range = Range.make();

let _ = sel->anchorNode;
let _ = sel->anchorOffset;
let _ = sel->focusNode;
let _ = sel->focusOffset;
let _ = sel->isCollapsed;
let _ = sel->rangeCount;
let _ = sel->getRangeAt(0);

sel->collapse(node, 0);
sel->extend(node, 0);
sel->collapseToStart;
sel->collapseToEnd;
sel->selectAllChildren(node);
sel->addRange(range);
sel->removeRange(range);
sel->removeAllRanges;
sel->deleteFromDocument;
sel->setBaseAndExtent(node, 0, node, 0);
let _ = sel->toString;
let _ = sel->containsNode(node);
let _ = sel->containsNodePartly(node);
