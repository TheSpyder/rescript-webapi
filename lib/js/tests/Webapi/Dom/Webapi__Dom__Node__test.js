'use strict';

var Webapi__Dom__Node = require("../../../src/Webapi/Dom/Webapi__Dom__Node.js");

var node = document.createElement("strong").rootNode;

var node2 = document.createElement("small").rootNode;

var node3 = document.createElement("small").rootNode;

Webapi__Dom__Node.nodeType(node);

node.nodeValue = "foo";

node.textContent = "foo";

node.appendChild(node2);

node.cloneNode();

node.cloneNode(true);

node.compareDocumentPosition(node2);

node.contains(node2);

node.getRootNode();

node.getRootNode({ "composed": true });

node.hasChildNodes();

node.insertBefore(node2, node3);

node.isDefaultNamespace("http://...");

node.isEqualNode(node2);

node.isSameNode(node2);

node.lookupPrefix();

node.lookupNamespaceURI("https://...");

node.lookupNamespaceURI(null);

node.normalize();

node.removeChild(node2);

node.replaceChild(node3, node2);

exports.node = node;
exports.node2 = node2;
exports.node3 = node3;
/* node Not a pure module */
