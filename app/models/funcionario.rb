class Funcionario < ActiveRecord::Base
  attr_accessible :ativo, :contratacao, :departamento_id, :nome

  belongs_to :departamento, :validate => true

  validates :nome, :presence => {:message => "Informe o nome"}
  validates :departamento_id, :presence => {:message => "Departamento invalido"}
  validates :contratacao, :presence => {:message => "Informa a data de contratacao"}
  validates :ativo, :inclusion => {:in => [true, false], :message => "Status do funcionario invalido"}

end