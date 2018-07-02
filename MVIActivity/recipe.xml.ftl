<?xml version="1.0" encoding="UTF-8"?>
<recipe>
  <instantiate from="res/layout/layout.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

  <instantiate from="src/app_package/Activity.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />
  <instantiate from="src/app_package/Component.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}Component.kt" />
  <instantiate from="src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}Module.kt" />
  <instantiate from="src/app_package/PartialState.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}PartialState.kt" />
  <instantiate from="src/app_package/Presenter.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
  <instantiate from="src/app_package/View.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}View.kt" />
  <instantiate from="src/app_package/ViewState.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}ViewState.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${className}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${className}Component.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${className}Module.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${className}PartialState.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${className}View.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${className}ViewState.kt" />
</recipe>
