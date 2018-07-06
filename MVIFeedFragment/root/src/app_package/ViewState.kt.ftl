package com.tenClouds.tenCats.presentation.feed

import com.tenClouds.tenCats.domain.FeedItem
import java.io.Serializable

data class FeedViewState(val feedItems: List<FeedItem> = listOf(),
                         val throwable: Throwable? = null) : Serializable
