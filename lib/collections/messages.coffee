@Messages = new Mongo.Collection('message')

_schema = new SimpleSchema
  description:
    type: String
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()
Messages.attachSchema(_schema)

Messages.allow ->
  insert: (userId, doc) -> true if doc.userId is userId
  update: (userId, doc, fieldNames, modifier) -> true if doc.userId is userId
  remove: (userId, doc) -> true if doc.userId is userId
