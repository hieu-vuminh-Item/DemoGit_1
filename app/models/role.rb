class Role < ApplicationRecord
  self.table_name = "Role"
  has_many :accounts, class_name: Account.name, foreign_key: "role_id"
end
