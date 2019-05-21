package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Observable
import ${rootPackage}.presentation.base.BasePresenter

class ${presenterName}(
        private val view: ${viewName},
        initialState: ${viewStateName}
) : BasePresenter<${viewStateName}, ${viewStateName}.PartialState>(initialState) {

    override fun reduceViewState(previousState: ${viewStateName}, partialState: ${viewStateName}.PartialState): ${viewStateName} {
        TODO("Reduce PartialState to ViewState")
    }

    override fun provideViewIntents(): List<Observable<${viewStateName}.PartialState>> =
            TODO("Provide necessary intents")
}
