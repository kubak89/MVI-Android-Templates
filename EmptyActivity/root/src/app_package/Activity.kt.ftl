package ${escapeKotlinIdentifiers(packageName)}

import ${rootPackage}.R
import ${rootPackage}.presentation.base.BaseActivity

class ${androidClassName} : BaseActivity<${viewStateName}, ${presenterName}>(
        R.layout.${layoutName}
), ${viewName} {
    //region Intents

    //endregion

    //region Render methods
    override fun render(viewState: ${viewStateName}) {
        TODO("Do not forget to add necessary code inside AndroidManifest.xml and in ActivityInjector class")
        TODO("Handle render")
    }
    //endregion
}
