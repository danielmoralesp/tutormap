class Service < ActiveRecord::Base
  belongs_to :teacher

  enum type: [ :a_domicilio, :en_lugar_intermedio, :por_skype ]
  enum academ_level: [ :primaria, :bachillerato, :universitario, :postgrado ]
end
