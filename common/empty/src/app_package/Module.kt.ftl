package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val androidClass: ${androidClassName}) {

  @Provides
  fun provideLoginView(): ${viewName} = androidClass

  @Provides
  fun provideSavedViewState(): ${viewStateName} =
        fragment.arguments?.getSerializable(KEY_SAVED_ACTIVITY_VIEW_STATE) as? ${viewStateName}
                ?: ${viewStateName}()
}
