package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val activity: ${activityName}) {

    @Provides
    fun provideFeedView(): ${viewName} = fragment

    @Provides
    fun provideInitialState(): ${viewStateName} = activity.intent.getSerializableExtra(
            KEY_SAVED_ACTIVITY_VIEW_STATE) as? ${viewStateName}
            ?: ${viewStateName}()
}
