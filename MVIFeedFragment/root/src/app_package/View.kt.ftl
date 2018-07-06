package com.tenClouds.tenCats.presentation.feed

import io.reactivex.Observable

interface FeedView {
    val loadFirstPageIntent: Observable<Any>
    val loadNextPageIntent: Observable<Any>
}
