class User < ApplicationRecord
    enum kind: [:condutor, :manager]
    enum status: [:active, :inactive]
    has_many :addresses
    has_many :clients
       
     end