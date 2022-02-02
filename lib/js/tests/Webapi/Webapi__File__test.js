'use strict';


var test_file = new File(["hello"], "hello.txt");

var test_lastModified = test_file.lastModified;

var test_name = test_file.name;

var test_filePropertyBag = {
  endings: "transparent",
  type: "text/plain",
  lastModified: 123.0
};

var test_filePropertyBagNone = {};

var test_makeWithOptions = new File(["hello"], "hello.txt", {
      type: "text/plain"
    });

exports.test_file = test_file;
exports.test_lastModified = test_lastModified;
exports.test_name = test_name;
exports.test_filePropertyBag = test_filePropertyBag;
exports.test_filePropertyBagNone = test_filePropertyBagNone;
exports.test_makeWithOptions = test_makeWithOptions;
/* test_file Not a pure module */
