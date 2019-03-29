import React, { Component } from "react";
import Login from "./Pages/Login";
import Dashboard from "./Pages/Dashboard";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = { width: 0, height: 0, login: false };
    this.updateWindowDimensions = this.updateWindowDimensions.bind(this);
  }

  componentDidMount() {
    this.updateWindowDimensions();
    window.addEventListener("resize", this.updateWindowDimensions);
  }

  componentWillUnmount() {
    window.removeEventListener("resize", this.updateWindowDimensions);
  }

  updateWindowDimensions() {
    this.setState({ width: window.innerWidth, height: window.innerHeight });
  }

  changeState = () => {
    this.setState({ login: false });
  };

  render() {
    console.log(this.state.login);
    if (this.state.login) {
      return (
        <Login
          height={this.state.height}
          width={this.state.width}
          login={this.state.login}
          changeState={this.changeState}
        />
      );
    } else {
      return <Dashboard height={this.state.height} width={this.state.width} />;
    }
  }
}

export default App;
