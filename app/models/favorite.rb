class Favorite < ApplicationRecord
    # BUG this really should be a has many through ledger table - the favorites can get super bulky and have repeated quotes with diff ids. It's making copies of the quotes
    belongs_to :user

    # checks the request to see if quote has already been added by a user
    # using scope uniqueness is really checking to make sure a quote does not have that user_id
    validates :user_id, presence: true
    validates :quote, presence: true, :uniqueness => {scope: :user_id}

end
