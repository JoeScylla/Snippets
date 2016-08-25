# Rules for model associations #

I recently went through a very painful learning curve with the ExtJS associations, and came across 
some useful articles, as well as my own gotchas. Here is the summary for those who run into the same 
pains.

## Rules for HasMany Associations in ExtJS ##

- Always put your Proxies in your Models, not your Stores, unless you have a very good reason not to [1]
- Always require your child models if using them in hasMany relationships. [2]
- Always use foreignKey if you want to load the children at will
- Always use associationKey if you return the children in the same response as the parent
- You can use both foreignKey and associationKey if you like
- Always name your hasMany relationships
- Always use fully qualified model names in your hasMany relationship
- Consider giving the reader root a meaningful name (other than "data")
- The child model does not need a belongsTo relationship for the hasMany to work

[1] The store will inherit its model's proxy, and you can always override it
[2] To make it easy, and avoid potential circular references, you can require them in app.js

http://extjs-tutorials.blogspot.com/2012/05/extjs-hasmany-relationships-rules.html

## Rules for HasOne and BelongsTo Associations in ExtJS ##

- Put the proxy in the model, unless you have a very good reason not to
- Always use fully qualified model name
- Always set the getterName
- Always set the setterName
- Always set the associationKey, if the foreign object is returned in the same response as this object
- Always set the foreignKey, if you want to load the foreign object at will
- Consider changing the instanceName to something shorter
- The getter behaves differently depending on whether the foreign object is loaded or not. If it's loaded, the foreign object is returned. Otherwise, you need to pass in a callback to get it.
- You should set the name property if you plan to override this association.
- You do not need a belongsTo relationship for a hasMany to work
- Set the primaryKey property if the id field of the parent model is not "id"
- Sometimes you need to use uses or requires for the belongsTo association. Watch out for circular references though.
- Calling setter() function does not seem to set the instance. Set object.belongsToInstance = obj if calling the setter().

http://extjs-tutorials.blogspot.com/2012/05/extjs-belongsto-association-rules.html

## Misc ##

- If you're applying your data to a grid, make sure you call reconfigure() on the grid using the new store
- Your "foreignKey" property will be applied as a local filter to the ExtJS store; if you see the data loading over the network, but not showing in your grid, make sure your model has the foreignKey value defined as a field, or the local filter will exclude the data quiety. To test if this is the case, hook into the store's "load" event and call store.clearFilters(), and see if your data shows up
