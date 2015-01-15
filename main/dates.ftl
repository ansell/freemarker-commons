<#ftl encoding="UTF-8" strip_text=true>

<#--
  - Utilities to work with dates
  -
  - Author: Laurent Pireyn
  -->

<#-- Constants -->

<#-- See http://en.wikipedia.org/wiki/ISO_8601 -->
<#assign ISO_8601_DATE_PATTERN = "yyyy-MM-dd" />
<#assign ISO_8601_TIME_PATTERN = "HH:mmZ" />
<#assign ISO_8601_DATETIME_PATTERN = ISO_8601_DATE_PATTERN + "'T'" + ISO_8601_TIME_PATTERN />

<#-- Functions -->

<#function dateToIso8601 date>
    <#return date?string(ISO_8601_DATE_PATTERN)>
</#function>

<#function timeToIso8601 time>
    <#return time?string(ISO_8601_TIME_PATTERN)>
</#function>

<#function datetimeToIso8601 datetime>
    <#return datetime?string(ISO_8601_DATETIME_PATTERN)>
</#function>

<#function fromIso8601 string>
    <#return string?date(ISO_8601_PATTERN)>
</#function>
