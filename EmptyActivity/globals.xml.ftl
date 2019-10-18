<?xml version="1.0"?>

<globals>
  <#assign themeName=getApplicationTheme().name!'AppTheme'>

    <global id="androidClassName" value="${featureName}Activity"/>
    <global id="manifestOut" value="getAppManifestDir()"/>
    <global id="themeName" value="${themeName}"/>

    <#include "../common/globals.xml.ftl" />
</globals>
