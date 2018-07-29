class Order < ApplicationRecord
    resourcify
    # include Authority::Abilities

    belongs_to :user
end
