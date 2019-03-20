import React, { Component } from "react";
import Navbar from "./Components/Navbar";
import dashboardStyles from "../Styles/dashboardStyles.css";

export default class Dashboard extends React.Component {
  constructor(props) {
    super(props);
    this.state = { height: props.height, width: props.width };
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.height !== this.state.height) {
      this.setState({ height: nextProps.height });
    }
    if (nextProps.width !== this.state.width) {
      this.setState({ width: nextProps.width });
    }
  }

  render() {
    return (
      <div className="overlay">
        <Navbar />
      </div>
    );
  }
}
