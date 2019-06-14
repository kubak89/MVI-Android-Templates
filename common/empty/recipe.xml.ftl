<recipe folder="root://MVI/common/empty">
  <instantiate from="res/layout/layout.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

  <instantiate from="src/app_package/feature/Presenter.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
  <instantiate from="src/app_package/feature/View.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${viewName}.kt" />
  <instantiate from="src/app_package/feature/ViewState.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${viewStateName}.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${viewName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${viewStateName}.kt" />
</recipe>
