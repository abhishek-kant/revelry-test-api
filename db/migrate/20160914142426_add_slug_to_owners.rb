class AddSlugToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :slug, :string, index: true
  end
end
