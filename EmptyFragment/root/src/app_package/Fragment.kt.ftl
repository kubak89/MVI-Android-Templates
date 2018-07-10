package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage}.R

class ${androidClassName} : BaseFragment<${viewStateName}, ${presenterName}>(),${viewName} {
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View =
        layoutInflater.inflate(R.layout.${layoutName}, container, false)

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)

        Dagger${componentName}.builder().build().inject(this)

        subscribeToViewState()
    }

    override fun render(viewState: ${viewStateName}) {
        TODO("Implement view rendering")
    }
}
