package com.tenClouds.tenCats.presentation.feed

import com.tenClouds.tenCats.presentation.di.FragmentScope
import dagger.Component

@FragmentScope
@Component(modules = [FeedModule::class])
interface FeedComponent {
    fun inject(fragment: FeedFragment)
}
