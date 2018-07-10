package ${escapeKotlinIdentifiers(packageName)}

import com.tenclouds.xlenergy.di.ActivityScope
import dagger.Component

@ActivityScope
@Component(modules = [${moduleName}::class])
interface ${componentName} {
    fun inject(injected: ${androidClassName})
}
