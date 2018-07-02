package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject

class ${presenterName} @Inject constructor(view: ${viewName},
                                         initialState: ${viewStateName}) : Presenter<${viewStateName}, ${partialStateName}>() {

    init {
      TODO("Subscribe to view intents")

      subscribeToViewIntents(initialState)
    }

    override fun reduceViewState(previousState: ${viewStateName}, partialState: ${partialStateName}) =
            TODO()
}
