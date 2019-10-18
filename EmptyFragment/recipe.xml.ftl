<?xml version="1.0" encoding="UTF-8"?>
<recipe>
  <#include "../common/recipe.xml.ftl" />

  <instantiate from="src/app_package/Fragment.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${androidClassName}.kt" />
  <instantiate from="src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${moduleName}.kt" />

  <open file="${escapeXmlAttribute(srcOut)}/${androidClassName}.kt" />
</recipe>
