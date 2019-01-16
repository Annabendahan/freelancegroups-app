import React from "react"
import PropTypes from "prop-types"
class HelloWorld extends React.Component {
 constructor(props) {
    super(props)
    this.state = {
      count: 0,
    }
  }


  incrementHandler = () => {
   console.log(this.state.count)
   let newcount =  this.state.count++
   this.setState = { count : newcount}
  }

  render () {

    return (
      <div onClick={this.incrementHandler}>
        Greeting: {this.state.count}

      </div>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
