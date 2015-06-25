@App = React.createClass

  getInitialState: ->
    show: false

  hideModal: ->
    this.setState
      show: false

  showModal: ->
    this.setState
      show: true

  render: ->
    <div className="app">

      <h1>React.js Modal Animation</h1>

      <p>Simple demonstration of a modal with an animated backdrop.</p>

      <button className="btn" onClick={ this.showModal }>Show Modal</button>

      {
        if this.state.show
          <Modal close={ this.hideModal }>
            This is my modal window.
            <br />
            <button className="btn" onClick={ this.hideModal }>Close Modal</button>
          </Modal>
      }

      <div className="acknowledgements">
        Image courtesy of <a href="http://thepatternlibrary.com">thepatternlibrary.com</a>
      </div>

    </div>
