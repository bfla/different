@Statements = new Mongo.Collection('statement')

_schema = new SimpleSchema
  content:
    type: String
  userId:
    type: String
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> new Date()
Statements.attachSchema(_schema)

Statements.allow
  insert: (userId, doc) -> true if doc.userId is userId
  update: (userId, doc, fieldNames, modifier) -> true if doc.userId is userId
  remove: (userId, doc) -> true if doc.userId is userId

# Statements.deny
  # update: (userId, doc, fieldNames, modifier) -> _.without(doc, 'content') > 0
