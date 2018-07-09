package ${escapeKotlinIdentifiers(packageName)}

import com.tenClouds.tenCats.domain.FeedItem
import java.io.Serializable

data class ${viewStateName}(val feedItems: List<FeedItem> = listOf(),
                         val throwable: Throwable? = null) : Serializable
