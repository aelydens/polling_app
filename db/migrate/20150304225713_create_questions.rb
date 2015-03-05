class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.question :string
      t.poll_id :integer
    end
  end
end
