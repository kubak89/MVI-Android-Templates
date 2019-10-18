package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import ${rootPackage}.presentation.base.BaseFragment
import dagger.Module
import dagger.Provides

@Module
class ${moduleName} {

    @Provides
    fun provide${viewName}(fragment: ${androidClassName}): ${viewName} = fragment

    @Provides
    fun provideInitial${viewStateName}(fragment: ${androidClassName}): ${viewStateName} = fragment.savedInstanceState?.getSerializable(
            BaseFragment.KEY_SAVED_FRAGMENT_VIEW_STATE) as? ${viewStateName}
            ?: ${viewStateName}()
}
