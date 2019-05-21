package ${escapeKotlinIdentifiers(packageName)}

import ${rootPackage}.R
import ${rootPackage}.presentation.base.BaseFragment

class ${androidClassName} : BaseFragment<${viewStateName}, ${presenterName}>(
        R.layout.${layoutName}
), ${viewName} {
    override fun render(viewState: ${viewStateName}) {
      TODO("Do not forget to add necessary code inside FragmentInjector class")
      TODO("Handle render")
    }
}
