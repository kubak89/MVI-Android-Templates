package com.tenClouds.tenCats.presentation.feed

import com.tenClouds.tenCats.domain.FeedItem

sealed class FeedPartialState {
    class ItemsDownloaded(val items: List<FeedItem>): FeedPartialState()
    class ItemsDownloadError(val throwable: Throwable): FeedPartialState()
}
