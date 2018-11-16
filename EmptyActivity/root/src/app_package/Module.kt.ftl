package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val activity: ${androidClassName},
                    private val savedInstanceState: Bundle?) {

    @Provides
    fun provide${viewName}(): ${viewName} = activity

    @Provides
    fun provideSavedViewState(): ${viewStateName} =
        savedInstanceState?.getSerializable(
                  KEY_SAVED_ACTIVITY_VIEW_STATE) as? LoginViewState
                  ?: LoginViewState()
}
