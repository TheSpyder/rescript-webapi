@scope("Temporal.Now") @val
external zonedDateTimeISO: unit => Webapi__Temporal__Types.zonedDateTime = "zonedDateTimeISO"
@scope("Temporal.Now") @val
external zonedDateTimeISOWithTimeZone: Webapi__Temporal__Types.timeZone => Webapi__Temporal__Types.zonedDateTime =
  "zonedDateTimeISO"
@scope("Temporal.Now") @val
external zonedDateTime: Webapi__Temporal__Types.calendar => Webapi__Temporal__Types.zonedDateTime =
  "zonedDateTime"
@scope("Temporal.Now") @val
external zonedDateTimeWithTimeZone: (
  Webapi__Temporal__Types.calendar,
  Webapi__Temporal__Types.timeZone,
) => Webapi__Temporal__Types.zonedDateTime = "zonedDateTimeWithTimeZone"
@scope("Temporal.Now") @val external instant: unit => Webapi__Temporal__Types.instant = "instant"
@scope("Temporal.Now") @val external timeZone: unit => Webapi__Temporal__Types.timeZone = "timeZone"

@scope("Temporal.Now") @val
external plainDateTimeISO: unit => Webapi__Temporal__Types.plainDateTime = "plainDateTimeISO"
@scope("Temporal.Now") @val
external plainDateTimeISOWithTimeZone: Webapi__Temporal__Types.timeZone => Webapi__Temporal__Types.plainDateTime =
  "plainDateTimeISO"
@scope("Temporal.Now") @val
external plainDateTime: Webapi__Temporal__Types.calendar => Webapi__Temporal__Types.plainDateTime =
  "plainDateTime"
@scope("Temporal.Now") @val
external plainDateTimeWithTimeZone: (
  Webapi__Temporal__Types.calendar,
  Webapi__Temporal__Types.timeZone,
) => Webapi__Temporal__Types.plainDateTime = "plainDateTime"

@scope("Temporal.Now") @val
external plainDateISO: unit => Webapi__Temporal__Types.plainDate = "plainDateISO"
@scope("Temporal.Now") @val
external plainDateISOWithTimeZone: Webapi__Temporal__Types.timeZone => Webapi__Temporal__Types.plainDate =
  "plainDateISO"
@scope("Temporal.Now") @val
external plainDate: Webapi__Temporal__Types.calendar => Webapi__Temporal__Types.plainDate =
  "plainDate"
@scope("Temporal.Now") @val
external plainDateWithTimeZone: (
  Webapi__Temporal__Types.calendar,
  Webapi__Temporal__Types.timeZone,
) => Webapi__Temporal__Types.plainDate = "plainDate"

@scope("Temporal.Now") @val
external plainTimeISO: unit => Webapi__Temporal__Types.plainTime = "plainTimeISO"
@scope("Temporal.Now") @val
external plainTimeISOWithTimeZone: Webapi__Temporal__Types.timeZone => Webapi__Temporal__Types.plainTime =
  "plainTimeISO"
