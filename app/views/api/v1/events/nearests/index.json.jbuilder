# app/views/api/v1/events/nearests/index.json.jbuilder

json.partial! 'api/v1/events/event', collection: @events, as: :event