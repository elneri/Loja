class Item < ActiveRecord::Base

  belongs_to :pedido
  belongs_to :produto

  validates_presence_of     :pedido_id, :produto_id, :quantidade
  validates_numericality_of :quantidade, :only_integer => true,
                            :greater_than => 0

  def incrementar_quantidade( quantidade )
    self.quantidade += quantidade.to_i
  end

  def nome
    self.produto.nome
  end

  def preco_unitario
    self.produto.preco
  end

  def preco_total
    self.preco_unitario * self.quantidade
  end

end