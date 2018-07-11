<?xml version="1.0" encoding="UTF-8"?>
<recipe>
  <#include "../common/empty/recipe.xml.ftl" />
  <#include "../common/feed/recipe.xml.ftl" />

  <instantiate from="src/app_package/Fragment.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
  <instantiate from="src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt" />
  <open file="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />
</recipe>
