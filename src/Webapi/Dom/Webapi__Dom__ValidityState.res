type t

@get external valueMissing: t => bool = "valueMissing"
@get external typeMismatch: t => bool = "typeMismatch"
@get external patternMismatch: t => bool = "patternMismatch"
@get external tooLong: t => bool = "tooLong"
@get external tooShort: t => bool = "tooShort"
@get external rangeUnderflow: t => bool = "rangeUnderflow"
@get external rangeOverflow: t => bool = "rangeOverflow"
@get external stepMismatch: t => bool = "stepMismatch"
@get external badInput: t => bool = "badInput"
@get external customError: t => bool = "customError"
@get external valid: t => bool = "valid"
