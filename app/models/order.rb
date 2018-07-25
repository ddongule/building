class Order < ApplicationRecord
    resourcify
    # include Authority::Abilities

    belons_to :user
end
