package ${escapeKotlinIdentifiers(packageName)}

import ${rootPackage}.presentation.base.BaseActivity
import dagger.Module
import dagger.Provides

@Module
class ${moduleName} {

    @Provides
    fun provide${viewName}(activity: ${androidClassName}): ${viewName} = activity

    @Provides
    fun provideInitial${viewStateName}(activity: ${androidClassName}): ${viewStateName} = activity.savedInstanceState?.getSerializable(
            BaseActivity.KEY_SAVED_ACTIVITY_VIEW_STATE) as? ${viewStateName}
            ?: ${viewStateName}()
}
