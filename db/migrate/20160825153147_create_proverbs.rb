class CreateProverbs < ActiveRecord::Migration[5.0]
  def change
    create_table :proverbs do |t|
      t.string :text

      t.timestamps
    end
  end
end
