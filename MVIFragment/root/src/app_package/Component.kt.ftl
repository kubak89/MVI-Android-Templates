package ${escapeKotlinIdentifiers(packageName)}

import com.tenclouds.xlenergy.di.ActivityScope
import dagger.Component

@ActivityScope
@Component(modules = [${className}Module::class])
interface ${className}Component {
    fun inject(activity: ${className}Activity)
}
