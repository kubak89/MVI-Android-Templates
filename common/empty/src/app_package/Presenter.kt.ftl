package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject

class ${presenterName} @Inject constructor(private val view: MainView,
                                        private val initialState: MainViewState) : BasePresenter<MainViewState, MainPartialState>() {
    override fun connectToView() {
        TODO("Create intent observables")

        subscribeToViewIntents(initialState)
    }

    override fun reduceViewState(previousState: ${viewStateName}, partialState: ${partialStateName}) =
            TODO()
}
