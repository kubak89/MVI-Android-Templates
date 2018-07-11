<?xml version="1.0" encoding="UTF-8"?>
<globals>
  <global id="resOut" value="${resDir}" />
  <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />

  <global id="activityName" value="${featureName}Activity" />
  <global id="moduleName" value="${featureName}Module" />

  <#include "../common/di/globals.xml.ftl" />
  <#include "../common/feed/globals.xml.ftl" />
</globals>
