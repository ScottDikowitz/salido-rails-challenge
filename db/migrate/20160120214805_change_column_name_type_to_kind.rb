class ChangeColumnNameTypeToKind < ActiveRecord::Migration
  def change
    rename_column :wines, :type, :kind
  end
end
