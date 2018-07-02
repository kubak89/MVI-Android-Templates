package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import ${applicationPackage}.R

class ${className}Fragment : BaseFragment<${className}ViewState, ${className}Presenter>(), ${className}View {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${layoutName})

        Dagger${className}Component.builder()
                .${className}Module(${className}Module(this)).build().inject(this)

        subscribeToViewState()
    }

    override fun render(viewState: ${className}ViewState) = TODO("Implement rendering")
}
