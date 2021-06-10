class Servico < ApplicationRecord
    belongs_to :usuario
    belongs_to :cliente

    validates :tipoDoServico, presence: true, length: {minimum:8}
    validates :descricao, presence: true, length: {minimum:8}
    validates_date :data, on_or_after: lambda { Date.current }
    validates :valorDoServico, presence: true, length: {minimum:1}

end
