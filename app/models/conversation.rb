class Conversation < ApplicationRecord

  belongs_to :user
  belongs_to :listing
  has_many :messages

  def self.generate(args)
    ActiveRecord::Base.transaction do
      existing_conversation = Conversation.where(
        [
          'user_id = ? AND listing_id = ?',
          args[:user_id],
          args[:listing_id]
        ]
      ).last

      if existing_conversation
        current_conversation = existing_conversation
      else
        current_conversation = Conversation.create!(
          user_id: args[:user_id],
          listing_id: args[:listing_id]
        )
      end

      message = Message.create!(
        user_id: args[:user_id],
        conversation_id: current_conversation.id,
        content: args[:message]
      )
    end
  end
end
