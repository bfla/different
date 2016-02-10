@Channels = new Mongo.Collection('channel')

_schema = new SimpleSchema
  name:
    type: String
  admins:
    type: [String]
  members:
    type: [String]
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()
Channels.attachSchema(_schema)

Channels.allow
  insert: (userId, doc) -> true
  update: (userId, doc, fieldNames, modifier) -> true if doc.admins.indexOf(userId)
  remove: (userId, doc) -> true if userId is Meteor.userId()
