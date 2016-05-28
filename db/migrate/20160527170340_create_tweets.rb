class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|

      t.text      :title
        t.text        :text
        t.text        :image
        t.timestamps
    end
  end
end
