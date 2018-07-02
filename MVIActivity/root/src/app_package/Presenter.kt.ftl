package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject

class ${presenterName} @Inject constructor(view: ${viewName},
                                         initialState: ${viewStateName}) : Presenter<${viewStateName}, ${className}PartialState>() {

    init {
      TODO("Subscribe to view intents")

      subscribeToViewIntents(initialState)
    }

    override fun reduceViewState(previousState: ${className}ViewState, partialState: ${className}PartialState) =
            TODO()
}
