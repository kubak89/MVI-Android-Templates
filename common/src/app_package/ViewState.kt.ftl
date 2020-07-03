package ${escapeKotlinIdentifiers(packageName)}

import java.io.Serializable

data class ${viewStateName}(
        val example: Int = 0
) : Serializable {
    sealed class PartialState {
        //Class representing a PartialState of this View
    }
}
