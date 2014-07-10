class User < ActiveRecord::Base
  has_many :sent_greetings,
    # If the name of the other model cannot be derived from the association name, you can use the :class_name option to supply the model name. 
    class_name: "Greeting",
    # By convention, Rails assumes that the column used to hold the foreign key on this model is the name of the association with the suffix _id added. The :foreign_key option lets you set the name of the foreign key directly
    foreign_key: "sender_id"

  has_many :received_greetings,
    class_name: "Greeting",
    foreign_key: "recipient_id"

end
