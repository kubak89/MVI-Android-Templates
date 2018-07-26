package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import ${applicationPackage}.R

class ${androidClassName} : ${baseActivityName}<${viewStateName}, ${presenterName}>(), ${viewName} {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${layoutName})

        Dagger${componentName}.builder()
                .${moduleName}(${moduleName}(this, savedInstanceState))
                .build().inject(this)

        subscribeToViewState()
    }

    override fun render(viewState: ${viewStateName}) = TODO("Implement rendering")
}
