class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :body, :string
      t.column :post_id, :integer
      t.column :date, :date

      t.timestamps
    end
  end
end
