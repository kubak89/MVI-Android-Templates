<recipe>
  <#include "../common/empty/recipe.xml.ftl" />
  <#include "../common/di/recipe.xml.ftl" />

  <instantiate from="src/app_package/Activity.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${androidClassName}.kt" />
  <instantiate from="src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${androidClassName}.kt" />
</recipe>
