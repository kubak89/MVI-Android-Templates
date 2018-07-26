package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage}.R

const val KEY_SAVED_FRAGMENT_STATE = "savedState"

class ${androidClassName} : ${baseFragmentName}<${viewStateName}, ${presenterName}>(),${viewName} {
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View =
        layoutInflater.inflate(R.layout.${layoutName}, container, false)

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)

        Dagger${componentName}.builder().build().inject(this)

        subscribeToViewState()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        super.onSaveInstanceState(outState)
        outState.putSerializable(KEY_SAVED_FRAGMENT_STATE, presenter.getCurrentViewState())
    }

    override fun render(viewState: ${viewStateName}) {
        TODO("Implement view rendering")
    }
}
