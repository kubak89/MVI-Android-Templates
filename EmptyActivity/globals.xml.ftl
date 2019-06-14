<?xml version="1.0"?>

<globals>
  <#assign themeName=getApplicationTheme().name!'AppTheme'>

    <global id="resOut" value="${resDir}"/>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}"/>
    <global id="androidClassName" value="${featureName}Activity"/>
    <global id="manifestOut" value="getAppManifestDir()"/>
    <global id="themeName" value="${themeName}"/>

    <#include "../common/empty/globals.xml.ftl" />
</globals>
