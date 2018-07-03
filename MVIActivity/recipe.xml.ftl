<?xml version="1.0" encoding="UTF-8"?>
<recipe>
  <instantiate from="res/layout/layout.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

  <instantiate from="src/app_package/Activity.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
  <instantiate from="src/app_package/Component.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${componentName}.kt" />
  <instantiate from="src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />
  <instantiate from="src/app_package/PartialState.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${partialStateName}.kt" />
  <instantiate from="src/app_package/Presenter.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${partialStateName}.kt" />
  <instantiate from="src/app_package/View.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${viewName}.kt" />
  <instantiate from="src/app_package/ViewState.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${viewStateName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${componentName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${partialStateName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${partialStateName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${viewName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${viewStateName}.kt" />
</recipe>
