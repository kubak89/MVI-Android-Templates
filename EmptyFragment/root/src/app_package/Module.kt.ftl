package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val fragment: ${androidClassName},
                    private val savedInstanceState: Bundle?) {

  @Provides
  fun provide${viewName}(): ${viewName} = fragment

  @Provides
  fun provideInitialState(): ${viewStateName} =
        savedInstanceState?.getSerializable(KEY_SAVED_FRAGMENT_STATE) as? ${viewStateName}
                ?: ${viewStateName}()
}
