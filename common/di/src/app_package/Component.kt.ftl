package ${escapeKotlinIdentifiers(packageName)}

import dagger.Component

@Component(modules = [${moduleName}::class])
interface ${componentName} {
    fun inject(fragment: ${androidClassName})
}
