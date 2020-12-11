class Localizacao < ApplicationRecord
  self.table_name = "localizacao"
  belongs_to :dev  

end
