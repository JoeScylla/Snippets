# Managed_vs. Unmanaged_Listener #

A listener establishes a link between 2 objects. Unmanaged listeners are removed if the observed 
object is destroyed but not if the observer is destroyed. Managed listeners are removed if either 
object is destroyed.

Perhaps this is best illustrated with an example...

Consider a component that uses a store. The component may contain something like this:

	this.store.on('datachanged', this.storeDataChanged, this);

Now if the store is destroyed then the listener will be destroyed, no problem. However, if the 
component is destroyed first then that causes a problem because the listener will still be on the 
store. One way to handle this is to unregister the listener manually when the component is 
destroyed:

	onDestroy: function() {
		this.store.un('datachanged', this.storeDataChanged, this);
		this.callParent();
	}

This is such a common scenario that managed listeners were introduced. These automatically 
unregister a listener when a component is destroyed.

	this.mon(this.store, 'datachanged', this.storeDataChanged, this);

The listener will still be removed if the store is destroyed but it will also be removed if the 
component is destroyed.

Managed listeners don't come for free. There's a small cost associated with remembering the 
listeners so that they can be unregistered. In isolation this cost isn't a problem but if you do it 
unnecessarily it adds up. Deciding which type of listener to use just requires you to consider which 
of the two objects will be destroyed first. If you don't know which object will be destroyed first 
then using a managed listener is safer as it covers both ends. This is rare though, in general you 
risk huge memory leaks if you use managed listeners where they aren't appropriate.
