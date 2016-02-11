@StatementItem = React.createClass(
  
  propTypes:
    statement: React.PropTypes.object.isRequired

  render: ->
    return (
      <div>{statement.content}</div>
    )
)