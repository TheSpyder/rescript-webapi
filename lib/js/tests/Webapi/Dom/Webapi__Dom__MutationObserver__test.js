'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");

var el = document.createElement("strong");

var observer = new MutationObserver((function (_records, _observer) {
        
      }));

observer.observe(el, {
      subtree: true,
      childList: true,
      attributes: true,
      attributeOldValue: true,
      characterData: true,
      characterDataOldValue: true
    });

observer.disconnect();

var records = observer.takeRecords();

var aRecord = records[0];

var recordType = aRecord.type;

var recordTarget = aRecord.target;

var recordAddedNodes = aRecord.addedNodes;

var recordRemovedNodes = aRecord.removedNodes;

var recordPrevSibling = aRecord.previousSibling;

var recordNextSibling = aRecord.nextSibling;

var recordAttributeName = aRecord.attributeName;

var recordAttributeNamespace = aRecord.attributeNamespace;

var recordOldValue = aRecord.oldValue;

var recordPrevSibling$1 = (recordPrevSibling == null) ? undefined : Caml_option.some(recordPrevSibling);

var recordNextSibling$1 = (recordNextSibling == null) ? undefined : Caml_option.some(recordNextSibling);

var recordAttributeName$1 = (recordAttributeName == null) ? undefined : Caml_option.some(recordAttributeName);

var recordAttributeNamespace$1 = (recordAttributeNamespace == null) ? undefined : Caml_option.some(recordAttributeNamespace);

var recordOldValue$1 = (recordOldValue == null) ? undefined : Caml_option.some(recordOldValue);

exports.el = el;
exports.observer = observer;
exports.records = records;
exports.aRecord = aRecord;
exports.recordType = recordType;
exports.recordTarget = recordTarget;
exports.recordAddedNodes = recordAddedNodes;
exports.recordRemovedNodes = recordRemovedNodes;
exports.recordPrevSibling = recordPrevSibling$1;
exports.recordNextSibling = recordNextSibling$1;
exports.recordAttributeName = recordAttributeName$1;
exports.recordAttributeNamespace = recordAttributeNamespace$1;
exports.recordOldValue = recordOldValue$1;
/* el Not a pure module */
