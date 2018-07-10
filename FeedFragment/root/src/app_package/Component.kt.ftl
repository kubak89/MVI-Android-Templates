package ${escapeKotlinIdentifiers(packageName)}

import dagger.Component

@FragmentScope
@Component(modules = [${moduleName}::class])
interface ${componentName} {
    fun inject(fragment: ${fragmentName})
}
