package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val fragment: ${androidClassName},
                    private val savedInstanceState: Bundle?) {

  @Provides
  fun provideLoginView(): ${viewName} = fragment

  @Provides
  fun provideInitialState(): ${viewStateName} =
        savedInstanceState?.getSerializable(KEY_SAVED_FRAGMENT_STATE) as? ${viewStateName}
                ?: ${viewStateName}()
}
