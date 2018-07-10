package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.jakewharton.rxbinding2.support.v4.widget.RxSwipeRefreshLayout
import com.tenClouds.tenCats.R
import ${escapeKotlinIdentifiers(packageName)}.base.BaseActivity
import io.reactivex.Observable
import kotlinx.android.synthetic.main.fragment_feed.*
import kotlinx.android.synthetic.main.fragment_feed.view.*

  const val KEY_SAVED_ACTIVITY_VIEW_STATE = "savedViewState"

  class ${activityName} : BaseActivity<${viewStateName}, ${presenterName}>(), ${viewName} {
    private val feedAdapter: ${adapterName} = ${adapterName}()

    override val loadFirstPageIntent: Observable<Any>
        get() = RxSwipeRefreshLayout.refreshes(feedSwipeRefreshLayout)

    override val loadNextPageIntent: Observable<Any>
        get() = feedAdapter.bottomReachedObservable

        override fun onCreate(savedInstanceState: Bundle?) {
            super.onCreate(savedInstanceState)

            setContentView(R.layout.${layoutName})

            feedRecyclerView.adapter = feedAdapter

            Dagger${componentName}.builder()
                    .${moduleName}(${moduleName}(this)).build().inject(this)

            subscribeToViewState()
        }

    override fun render(viewState: ${viewStateName}) {
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
