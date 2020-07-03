<recipe folder="root://MVI/common">
  <instantiate from="res/layout/layout.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

  <instantiate from="src/app_package/Presenter.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
  <instantiate from="src/app_package/ViewState.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${viewStateName}.kt" />
  <instantiate from="src/app_package/Intent.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${intentName}.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${viewStateName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${intentName}.kt" />
</recipe>
