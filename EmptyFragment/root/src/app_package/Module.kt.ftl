package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val fragment: ${fragmentClass}) {

  @Provides
  fun provideLoginView(): ${viewName} = fragment

  @Provides
  fun provideSavedViewState(): ${viewStateName} =
        fragment.arguments?.getSerializable(KEY_SAVED_ACTIVITY_VIEW_STATE) as? ${viewStateName}
                ?: ${viewStateName}()
}
