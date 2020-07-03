package ${escapeKotlinIdentifiers(packageName)}

import ${rootPackage}.presentation.features.base.BasePresenter
import io.reactivex.rxjava3.core.Flowable

class ${presenterName}(
  initialState: ${viewStateName}
) : BasePresenter<${viewStateName}, ${viewStateName}.PartialState, ${intentName}>(initialState) {

    override fun reduceViewState(previousState: ${viewStateName}, partialState: ${viewStateName}.PartialState): ${viewStateName} {
        TODO("Reduce PartialState to ViewState")
    }

    override fun provideViewIntents(): Flowable<${viewStateName}.PartialState> =
            TODO("Provide necessary intents")
}
