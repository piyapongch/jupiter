class CreateArItem < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'uuid-ossp'
    enable_extension 'pgcrypto'
    create_table :ar_items, id: :uuid do |t|
      t.string :visibility
      t.references :owner, null: false, index: true, foreign_key: {to_table: :users, column: :id}
      t.datetime :record_created_at
      t.string :hydra_noid
      t.datetime :date_ingested
      t.string :title
      t.string :fedora3_uuid
      t.string :depositor
      t.string :alternative_title
      t.string :doi
      t.datetime :embargo_end_date
      t.string :visibility_after_embargo
      t.string :fedora3_handle
      t.string :ingest_batch
      t.string :northern_north_america_filename
      t.string :northern_north_america_item_id
      t.text :rights
      t.string :sort_year
      t.json :embargo_history, array: true
      t.string :is_version_of
      t.json :member_of_paths, array: true
      t.json :subject, array: true
      t.json :creators, array: true
      t.json :contributors, array: true
      t.string :created
      t.json :temporal_subjects, array: true
      t.json :spatial_subjects, array: true
      t.text :description
      t.string :publisher
      t.json :languages, array: true
      t.text :license
      t.string :item_type
      t.string :source
      t.string :related_link
      t.json :publication_status, array: true
      t.timestamps
    end
  end
end
