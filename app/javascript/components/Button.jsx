import React from "react"

class Button extends React.Component {
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
        Button: {this.state.count}

      </div>
    );
  }
}

export default Button;
