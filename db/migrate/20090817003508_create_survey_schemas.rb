class CreateSurveySchemas < ActiveRecord::Migration
  def self.up
    create_table :survey_schemas do |t|
      t.string :title
      t.string :preamble
      t.references :owner
      t.timestamps
    end
  end

  def self.down
    drop_table :survey_schemas
  end
end
