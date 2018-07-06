package com.tenClouds.tenCats.presentation.feed

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.jakewharton.rxbinding2.support.v4.widget.RxSwipeRefreshLayout
import com.tenClouds.tenCats.R
import com.tenClouds.tenCats.presentation.base.BaseFragment
import io.reactivex.Observable
import kotlinx.android.synthetic.main.fragment_feed.*
import kotlinx.android.synthetic.main.fragment_feed.view.*

class FeedFragment : BaseFragment<FeedViewState, FeedPresenter>(), FeedView {
    private val feedAdapter: FeedAdapter = FeedAdapter()

    override val loadFirstPageIntent: Observable<Any>
        get() = RxSwipeRefreshLayout.refreshes(feedSwipeRefreshLayout)

    override val loadNextPageIntent: Observable<Any>
        get() = feedAdapter.bottomReachedObservable

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View =
            layoutInflater.inflate(R.layout.fragment_feed, container, false).apply {
                feedRecyclerView.adapter = feedAdapter
            }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)

        DaggerFeedComponent.builder().feedModule(FeedModule(this)).build().inject(this)

        subscribeToViewState()
    }

    override fun render(viewState: FeedViewState) {
        if(viewState.throwable != null) showError(viewState.throwable)
        feedAdapter.setItems(viewState.feedItems)
    }

    private fun showError(throwable: Throwable) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    companion object {
        const val TAG: String = "FEED_FRAGMENT"
    }
}
