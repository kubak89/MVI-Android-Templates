<?xml version="1.0" encoding="UTF-8"?>
<recipe>
  <instantiate from="root/res/layout/layout.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

  <instantiate from="root/src/app_package/Fragment.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${}Fragment.kt" />
  <instantiate from="root/src/app_package/Component.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentName}Component.kt" />
  <instantiate from="root/src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentName}Modules.kt" />
  <instantiate from="root/src/app_package/PartialState.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentName}PartialState.kt" />
  <instantiate from="root/src/app_package/Presenter.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentName}Presenter.kt" />
  <instantiate from="root/src/app_package/View.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentName}View.kt" />
  <instantiate from="root/src/app_package/ViewState.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentName}ViewState.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}Fragment.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}Component.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}Modules.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}PartialState.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}Presenter.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}View.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}ViewState.kt" />
</recipe>
