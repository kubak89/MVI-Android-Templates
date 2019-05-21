package ${escapeKotlinIdentifiers(packageName)}

import java.io.Serializable

data class ${viewStateName}(
        //TODO Add your own variables representing the view
) : Serializable {
    sealed class PartialState {
        //Class representing a PartialState of this View
    }
}
