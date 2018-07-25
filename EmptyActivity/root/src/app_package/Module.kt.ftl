package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val activity: ${androidClassName},
                    private val savedInstanceState: Bundle?) {

    @Provides
    fun provideLoginView(): ${viewName} = activity

    @Provides
    fun provideSavedViewState(): ${viewStateName} =
        savedInstanceState?.getSerializable(
                  KEY_SAVED_ACTIVITY_VIEW_STATE) as? LoginViewState
                  ?: LoginViewState()
}
