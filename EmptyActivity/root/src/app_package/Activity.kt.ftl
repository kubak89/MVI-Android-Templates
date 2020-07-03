package ${escapeKotlinIdentifiers(packageName)}

import ${rootPackage}.R
import ${rootPackage}.presentation.features.base.BaseActivity

class ${activityName} : BaseActivity<${viewStateName}, ${presenterName}>(
        R.layout.${layoutName}
) {
    //region Intents

    //endregion

    //region Render methods
    override fun render(viewState: ${viewStateName}) {
        TODO("Handle render")
    }
    //endregion
}
