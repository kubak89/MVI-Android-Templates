package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val activity: ${androidClassName}) {

    @Provides
    fun provideLoginView(): ${viewName} = ${androidClassName}

    @Provides
    fun provideSavedViewState(): ${viewStateName} =
      activity.intent.getSerializableExtra(
              KEY_SAVED_ACTIVITY_VIEW_STATE) as? ${viewStateName}
              ?: ${viewStateName}()
}
