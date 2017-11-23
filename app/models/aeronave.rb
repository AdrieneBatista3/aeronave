class Aeronave < ActiveRecord::Base

validates_presence_of :nome, on: :create, message: "Não pode ficar em branco"
validates_presence_of :numero_de_tripulantes, on: :create, message: "Não pode ficar em branco"
validates_presence_of :tamanho, on: :create, message: "Não pode ficar em branco"
validates_presence_of :numero, on: :create, message: "Não pode ficar em branco"
validates_presence_of :chassi, on: :create, message: "Não pode ficar em branco"
validates_presence_of :quantidade_de_horas_de_voo, on: :create, message: "Não pode ficar em branco"
validates_presence_of :quantidade_de_motor, on: :create, message: "Não pode ficar em branco"




end
