package ${escapeKotlinIdentifiers(packageName)}

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage}.R
import io.reactivex.Observable
import io.reactivex.subjects.PublishSubject

class ${adapterName} : RecyclerView.Adapter<${adapterName}.${viewHolderName}>() {
    private val bottomReachedSubject = PublishSubject.create<Any>()
    val bottomReachedObservable: Observable<Any>
        get() = bottomReachedSubject

    private val items: MutableList<${feedItemName}> = mutableListOf()

    fun setItems(newItems: List<${feedItemName}>) {
        items.clear()
        items.addAll(newItems)

        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${viewHolderName} =
            ${viewHolderName}(
                    LayoutInflater
                            .from(parent.context)
                            .inflate(R.layout.view_feed_item, parent, false))

    override fun getItemCount(): Int = items.size

    override fun onBindViewHolder(holder: ${viewHolderName}, position: Int) {
        if (position >= itemCount) notifyBottomReached()

        TODO("Implement binding view holder")
    }

    private fun notifyBottomReached() {
        bottomReachedSubject.onNext(Any())
    }

    class ${viewHolderName}(view: View) : RecyclerView.ViewHolder(view)
}
