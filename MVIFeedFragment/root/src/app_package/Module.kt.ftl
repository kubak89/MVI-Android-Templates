package com.tenClouds.tenCats.presentation.feed

import dagger.Module
import dagger.Provides

@Module
class FeedModule(private val fragment: FeedFragment) {

    @Provides
    fun provideFeedView(): FeedView = fragment

    @Provides
    fun provideInitialState(): FeedViewState = FeedViewState()
}
