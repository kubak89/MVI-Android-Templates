package com.tenClouds.tenCats.presentation.feed

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.tenClouds.tenCats.R
import com.tenClouds.tenCats.domain.FeedItem
import io.reactivex.Observable
import io.reactivex.subjects.PublishSubject

class FeedAdapter : RecyclerView.Adapter<FeedAdapter.FeedViewHolder>() {
    private val bottomReachedSubject = PublishSubject.create<Any>()
    val bottomReachedObservable: Observable<Any>
        get() = bottomReachedSubject

    private val items: MutableList<FeedItem> = mutableListOf()

    fun setItems(newItems: List<FeedItem>) {
        items.clear()
        items.addAll(newItems)

        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FeedViewHolder =
            FeedViewHolder(
                    LayoutInflater
                            .from(parent.context)
                            .inflate(R.layout.view_feed_item, parent, false))

    override fun getItemCount(): Int = items.size

    override fun onBindViewHolder(holder: FeedViewHolder, position: Int) {
        if (position >= itemCount) notifyBottomReached()

        TODO("Implement binding view holder")
    }

    private fun notifyBottomReached() {
        bottomReachedSubject.onNext(Any())
    }

    class FeedViewHolder(view: View) : RecyclerView.ViewHolder(view)
}