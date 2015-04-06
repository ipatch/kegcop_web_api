class RemoveHeliosBoilerplateFromDb < ActiveRecord::Migration
  def change
  	drop_table :accounts do |t|
  	end
  	drop_table :events do |t|
  	end
  	drop_table :in_app_purchase_products do |t|
  	end
  	drop_table :in_app_purchase_receipts do |t|
  	end
  	drop_table :in_app_purchase_schema_info do |t|
  	end
  	drop_table :newsstand_issues do |t|
  	end
  	drop_table :newsstand_schema_info do |t|
  	end
  	drop_table :passbook_passes do |t|
  	end
  	drop_table :passbook_registrations do |t|
  	end

  	drop_table :passbook_schema_info do |t|
  	end
  	drop_table :push_notification_devices do |t|
  	end

  	drop_table :push_notification_schema_info do |t|
  	end
  end
end
