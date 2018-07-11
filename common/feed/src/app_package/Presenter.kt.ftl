package ${escapeKotlinIdentifiers(packageName)}

import javax.inject.Inject

class ${presenterName} @Inject constructor(view: ${viewName},
                                        initialState: ${viewStateName},
                                        feedRepository: ${feedItemsRepositoryName}) : Presenter<${viewStateName}, ${partialStateName}>() {

    init {
        view.loadFirstPageIntent.startWith(Any()).flatMap {
            feedRepository.getFeedItems().toObservable()
                    .map {
                        ${partialStateName}.ItemsDownloaded(it) as ${partialStateName}
                    }
                    .onErrorReturn {
                        ${partialStateName}.ItemsDownloadError(it) as ${partialStateName}
                    }
        }

        subscribeToViewIntents(initialState)
    }

    override fun reduceViewState(previousState: ${viewStateName}, partialState: ${partialStateName}) =
            TODO()
}
