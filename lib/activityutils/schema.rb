module ActivityDb

class CreateDb < ActiveRecord::Migration

  def up

create_table :activities do |t|
  t.integer :user_id    # references user

  t.integer :trackable_id
  t.string  :trackable_type    # is polymorphic
  
  t.string  :action    #  holds only create|update|delete - for trackable record

  ## optional free form (free text) activity -- make it into a table of its own? why? why not?
  #  why - keeps render uniform
  # why not - creates an extra record/model/table
  
  t.text    :text      # optional - text to render
  t.string  :tmpl      # optional - template key

  ### t.string  :params  - add parameters column - why ?? why not??
  
  t.timestamps   # - only need created-at - supposed no changes e.g. no modified_at
end

  end # method up

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end # class CreateDb

end # module ActivityDb
