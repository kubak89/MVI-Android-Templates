<recipe folder="root://MVI/common/di">
  <instantiate from="src/app_package/Component.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${componentName}.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${componentName}.kt" />
</recipe>
