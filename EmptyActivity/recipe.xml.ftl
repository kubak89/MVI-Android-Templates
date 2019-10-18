<recipe>
  <#include "../common/recipe.xml.ftl" />

  <merge from="AndroidManifest.xml.ftl" to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

  <instantiate from="src/app_package/Activity.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${androidClassName}.kt" />
  <instantiate from="src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${androidClassName}.kt" />
</recipe>
