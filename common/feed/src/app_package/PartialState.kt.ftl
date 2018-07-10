package ${escapeKotlinIdentifiers(packageName)}

import ${escapeKotlinIdentifiers(packageName)}.domain.${feedItemName}

sealed class ${partialStateName} {
    class ItemsDownloaded(val items: List<${feedItemName}>): ${partialStateName}()
    class ItemsDownloadError(val throwable: Throwable): ${partialStateName}()
}
