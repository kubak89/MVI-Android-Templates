package ${escapeKotlinIdentifiers(packageName)}

import ${rootPackage}.R
import ${rootPackage}.presentation.features.base.BaseFragment

class ${fragmentName} : BaseFragment<${viewStateName}, ${presenterName}>(
        R.layout.${layoutName}
) {
    override fun render(viewState: ${viewStateName}) {
      TODO("Do not forget to add necessary code inside FragmentInjector class")
      TODO("Handle render")
    }
}
