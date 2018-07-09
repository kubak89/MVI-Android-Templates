package ${escapeKotlinIdentifiers(packageName)}

import java.io.Serializable

data class ${viewStateName}(val feedItems: List<${feedItemName}> = listOf(),
                         val throwable: Throwable? = null) : Serializable
