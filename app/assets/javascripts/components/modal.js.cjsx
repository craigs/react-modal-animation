@ReactTransitionGroup = React.addons.CSSTransitionGroup
@Modal = React.createClass

  componentDidMount: ->
    document.addEventListener("keydown", this.onKeyDown, false)

  componentDidUnmount: ->
    document.removeEventListener("keydown", this.onKeyDown, false)

  onKeyDown: (event) ->
    if event.keyCode == 27
      this.props.close()

  stopPropagation: (event) ->
    event.stopPropagation()

  close: (event) ->
    event.preventDefault()
    event.stopPropagation()
    this.props.close()

  classes: ->
    classNames
      modal: true
      'modal-appear': true

  render: ->
    <ReactTransitionGroup transitionName="modal" transitionAppear={ true } transitionLeave={ true }>
      <div key="modal" className={ this.classes() } onClick={ this.close }>
        <div className="body" onClick={ this.stopPropagation }>
          { this.props.children }
        </div>
      </div>
    </ReactTransitionGroup>
