<recipe>
  <#include "../common/recipe.xml.ftl" />

  <merge from="AndroidManifest.xml.ftl" to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

  <instantiate from="src/app_package/Activity.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${activityName}.kt" />
  <instantiate from="src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${activityName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />
</recipe>
