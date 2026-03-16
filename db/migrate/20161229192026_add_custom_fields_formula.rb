if defined?(ActiveRecord::Migration) && ActiveRecord::Migration.respond_to?(:[])
  class ComputedCustomFieldMigration < ActiveRecord::Migration[4.2]; end
else
  class ComputedCustomFieldMigration < ActiveRecord::Migration; end
end

class AddCustomFieldsFormula < ComputedCustomFieldMigration
  def up
    add_column :custom_fields, :formula, :text
  end

  def down
    remove_column :custom_fields, :formula
  end
end
