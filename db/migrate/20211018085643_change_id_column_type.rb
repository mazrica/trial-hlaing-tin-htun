class ChangeIdColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column :issue_custom_details, :issue_custom_id, :bigint
    change_column :issue_custom_item_options, :issue_custom_item_id, :bigint
    change_column :issue_customs, :issue_id, :bigint
    change_column :issue_customs, :issue_custom_item_id, :bigint
  end
end
