<?xml version="1.0"?>
<globals>
 <global id="resOut" value="${resDir}" />
 <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
 <global id="androidClassName" value="${featureName}Activity" />

 <#include "../common/empty/globals.xml.ftl" />
 <#include "../common/di/globals.xml.ftl" />
</globals>
