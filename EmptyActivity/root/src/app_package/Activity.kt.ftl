package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import ${applicationPackage}.R

class ${activityClass} : BaseActivity<${viewStateName}, ${presenterName}>(), ${viewName} {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${layoutName})

        Dagger${componentName}.builder()
                .${moduleName}(${moduleName}(this)).build().inject(this)

        subscribeToViewState()
    }

    override fun render(viewState: ${viewStateName}) = TODO("Implement rendering")
}
