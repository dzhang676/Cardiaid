import React, { Component } from "react";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import Routes from "./Routes";
import "./App.css";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = { test: "hello" };
  }

  render() {
    return <Routes test={this.state.test} />;
  }
}

export default App;
