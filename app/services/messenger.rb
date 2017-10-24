class Messenger

  attr_accessor :errors

  def initialize(args)
    @user = args[:user]
    @content = args[:message]
    @listing_id = args[:listing_id]

    @errors = []
  end

  def call
    if message_valid?
      ActiveRecord::Base.transaction do
        existing_conversation = Conversation.where(
          [
            'user_id = ? AND listing_id = ?',
            @user.id,
            @listing_id
          ]
        ).last

        if existing_conversation
          current_conversation = existing_conversation
        else
          current_conversation = Conversation.create!(
            user_id: @user.id,
            listing_id: @listing_id
          )
        end

        message = Message.create!(
          user_id: @user.id,
          conversation_id: current_conversation.id,
          content: @content
        )
      end
    end
    return self
  end

private

  def message_valid?
    if @listing_id == 0
      @errors.push({conversation: ['Please provide listing']})
    end

    if @errors.length > 0
      return false
    else
      return true
    end
  end

end
