package ${escapeKotlinIdentifiers(packageName)}

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import dagger.Module
import dagger.Provides
import javax.inject.Inject

@Module
class ${moduleName} {

    @Provides
    fun provideInitial${viewStateName}(): ${viewStateName} =
        ${viewStateName}()

    @Provides
    fun provide${presenterName}(activity: ${activityName}, factory: ${factoryName}) =
            ViewModelProvider(activity, factory).get(${presenterName}::class.java)
}

class ${factoryName} @Inject constructor(
        private val initialState: ${viewStateName}
    ) : ViewModelProvider.Factory {
    @Suppress("UNCHECKED_CAST")
    override fun <T : ViewModel?> create(modelClass: Class<T>): T =
            ${presenterName}(initialState) as T
}
