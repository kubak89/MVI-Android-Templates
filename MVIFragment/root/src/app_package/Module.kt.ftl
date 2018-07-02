package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${className}Module(private val activity: ${className}Activity) {

    @Provides
    fun provideLoginView(): ${className}View = ${className}Activity

    @Provides
    fun provideSavedViewState(): ${className}ViewState =
    ${className}Activity.intent.getSerializableExtra(
            KEY_SAVED_ACTIVITY_VIEW_STATE) as? ${className}ViewState
            ?: ${className}ViewState()
}
