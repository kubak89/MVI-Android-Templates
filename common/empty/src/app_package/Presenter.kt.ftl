package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject

class ${presenterName} @Inject constructor(private val view: ${viewName},
                                        private val initialState: ${viewStateName}) : BasePresenter<${viewStateName}, ${partialStateName}>() {
    override fun connectToView() {
        TODO("Create intent observables")

        subscribeToViewIntents(initialState)
    }

    override fun reduceViewState(previousState: ${viewStateName}, partialState: ${partialStateName}) =
            TODO()
}
