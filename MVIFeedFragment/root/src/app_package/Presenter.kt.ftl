package com.tenClouds.tenCats.presentation.feed

import com.tenClouds.tenCats.domain.FeedRepository
import com.tenClouds.tenCats.presentation.base.Presenter
import javax.inject.Inject

class FeedPresenter @Inject constructor(view: FeedView,
                                        initialState: FeedViewState,
                                        feedRepository: FeedRepository) : Presenter<FeedViewState, FeedPartialState>() {

    init {
        view.loadFirstPageIntent.startWith(Any()).flatMap {
            feedRepository.getFeedItems().toObservable()
                    .map {
                        FeedPartialState.ItemsDownloaded(it) as FeedPartialState
                    }
                    .onErrorReturn {
                        FeedPartialState.ItemsDownloadError(it) as FeedPartialState
                    }
        }

        subscribeToViewIntents(initialState)
    }

    override fun reduceViewState(previousState: FeedViewState, partialState: FeedPartialState) =
            TODO()
}
