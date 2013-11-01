# activityutils

activityutils gems - activity (timeline) utilities

* home  :: [github.com/rubylibs/activityutils](https://github.com/rubylibs/activityutils)
* bugs  :: [github.com/rubylibs/activityutils/issues](https://github.com/rubylibs/activityutils/issues)
* gem   :: [rubygems.org/gems/activityutils](https://rubygems.org/gems/activityutils)
* rdoc  :: [rubydoc.info/gems/activityutils](http://rubydoc.info/gems/activityutils)

## Usage

TBD


## Alternatives


### Database Schemas

~~~
create_table :activity_engine_activities do |t|
  t.integer :user_id
  t.string  :subject_type,  index: true, null: false
  t.string  :subject_id,    index: true, null: false
  t.string  :activity_type, index: true, null: false
  t.text    :message
  t.timestamps
end
~~~

(source: [ndlib/activity_engine](https://github.com/ndlib/activity_engine/blob/master/db/migrate/20130722162331_create_activity_engine_activities.rb))

~~~
create_table :activities do |t|
  t.integer  :user_id, :limit => 10
  t.string   :action,  :limit => 50
  t.integer  :item_id, :limit => 10
  t.string   :item_type
  t.datetime :created_at
end
~~~

(source: [bborn/communityengine](https://github.com/bborn/communityengine/blob/master/db/migrate/039_create_activities_table.rb))

~~~
create_table :activities do |t|
  t.references :user # who performed the activity
  t.boolean    :public,   :default => true
  t.integer    :item_id   # which item was the activity performed on
  t.string     :item_type # what type of item was it (photo, user, blog_post, etc)
  t.string     :action    # what action was performed on the item (create, destroy, update, etc)
  t.timestamps
end
~~~

(source: [timothyf/EngineY](https://github.com/timothyf/EngineY/blob/master/db/migrate/20090116165201_create_activities.rb))


~~~
create_table :activities do |t|
  t.integer :person_id
  t.boolean :public
  t.integer :item_id
  t.string  :item_type
  t.timestamps
end
~~~

(source: [insoshi/insoshi](https://github.com/insoshi/insoshi/blob/master/db/migrate/010_create_events_and_feed.rb))


~~~
create_table :activities do |t|
  t.belongs_to :trackable, :polymorphic => true
  t.belongs_to :owner,     :polymorphic => true
  t.string     :key
  t.text       :parameters
  t.belongs_to :recipient, :polymorphic => true
  t.timestamps
end
~~~

(source: [pokonski/public_activity](https://github.com/pokonski/public_activity/blob/master/lib/generators/public_activity/migration/templates/migration.rb))

~~~
create_table :activity_logs do |t|
  t.integer :user_id
  t.integer :loggable_id
  t.string :loggable_type
  t.string :action
  t.integer :parent_activity_id
  t.string :action_type
  t.text :data
  t.timestamps
end
~~~

(source: [JonErikDSuero/activitylog](https://github.com/JonErikDSuero/activitylog/blob/master/lib/generators/activity_log/templates/create_activity_logs.rb))


TBD

## License

The `activityutils` scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.
