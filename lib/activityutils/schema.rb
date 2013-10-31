module ActivityDb

class CreateDb < ActiveRecord::Migration

  def up

create_table :activities do |t|
  t.integer :user_id    # references user

  t.integer :item_id
  t.string  :item_type    # is polymorphic - check if it works ???
  
  t.string  :action    # or use key - why?? why not??
  ### t.string  :params  - add parameters column - why ?? why not??
  t.timestamps
end

  end # method up

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end # class CreateDb

end # module ActivityDb
