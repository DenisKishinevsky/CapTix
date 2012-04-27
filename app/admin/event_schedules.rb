ActiveAdmin.register EventSchedule do
  index do
	column :event
	column :event_date
	column "M", :monday
	column "T", :tuesday
	column "W", :wednsday
	column "T", :thursday
	column "F", :friday
	column "S", :saturday
	column "S", :sunday
	default_actions
  end
end
