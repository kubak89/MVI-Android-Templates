package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject

class ${presenterName} @Inject constructor(view: ${viewName},
                                         initialState: ${viewStateName}) : BasePresenter<${viewStateName}, ${partialStateName}>() {

    init {
      TODO("Subscribe to view intents")

      subscribeToViewIntents(initialState)
    }

    override fun reduceViewState(previousState: ${viewStateName}, partialState: ${partialStateName}) =
            TODO()
}
