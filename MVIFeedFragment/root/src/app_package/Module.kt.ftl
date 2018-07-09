package ${escapeKotlinIdentifiers(packageName)}

import dagger.Module
import dagger.Provides

@Module
class ${moduleName}(private val fragment: ${fragmentName}) {

    @Provides
    fun provideFeedView(): ${viewName} = fragment

    @Provides
    fun provideInitialState(): ${viewStateName} = ${viewStateName}()
}
