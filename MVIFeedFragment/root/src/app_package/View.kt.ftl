package ${escapeKotlinIdentifiers(packageName)}

import io.reactivex.Observable

interface ${viewName} {
    val loadFirstPageIntent: Observable<Any>
    val loadNextPageIntent: Observable<Any>
}
