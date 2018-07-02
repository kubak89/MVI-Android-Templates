package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val activity: ${activityClass}) {

    @Provides
    fun provideLoginView(): ${viewName} = ${activityClass}

    @Provides
    fun provideSavedViewState(): ${viewStateName} =
    ${activityClass}.intent.getSerializableExtra(
            KEY_SAVED_ACTIVITY_VIEW_STATE) as? ${viewStateName}
            ?: ${viewStateName}()
}
