package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject

class ${className}Presenter @Inject constructor(${className}View: ${className}View,
                                         initialState: ${className}ViewState) : Presenter<${className}ViewState, ${className}PartialState>() {

    init {
      TODO("Subscribe to view intents")

      subscribeToViewIntents(initialState)
    }

    override fun reduceViewState(previousState: ${className}ViewState, partialState: ${className}PartialState) =
            TODO()
}
