'use strict';


var navigatorCopy = window.navigator;

var userAgent = navigatorCopy.userAgent;

var vendor = navigatorCopy.vendor;

var language = navigatorCopy.language;

var languages = navigatorCopy.languages;

var onLine = navigatorCopy.onLine;

var hardwareConcurrency = navigatorCopy.hardwareConcurrency;

navigatorCopy.registerProtocolHandler("web+foo", "foo?url=%s");

navigatorCopy.unregisterProtocolHandler("web+foo", "foo?url=%s");

var cookieEnabled = navigatorCopy.cookieEnabled;

var pdfViewerEnabled = navigatorCopy.pdfViewerEnabled;

exports.navigatorCopy = navigatorCopy;
exports.userAgent = userAgent;
exports.vendor = vendor;
exports.language = language;
exports.languages = languages;
exports.onLine = onLine;
exports.hardwareConcurrency = hardwareConcurrency;
exports.cookieEnabled = cookieEnabled;
exports.pdfViewerEnabled = pdfViewerEnabled;
/* navigatorCopy Not a pure module */
