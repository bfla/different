@App = React.createClass(

  # getStatements: ->
  #   return [
  #     { _id: 1, text: "This is task 1" }
  #     { _id: 2, text: "This is task 2" }
  #     { _id: 3, text: "This is task 3" }
  #   ]
 
  # renderTasks: ->
  #   return @getStatements.map((statement) =>
  #     return <StatementItem key={statement._id} statement={statement} />

  render: ->
    return (
      <div className="container">
        <header>
          <h1>different</h1>
        </header>
        <ul>
        </ul>
      </div>
    )
)