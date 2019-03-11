import React, { Component } from "react";
import spacingStyles from "../Styles/flexRow.css";
import loginImage from "../Images/loginImage.png";

export default class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = { test: this.props.test };
  }

  render() {
    console.log(this.state.test);
    return (
      <div className="row">
        <img src={loginImage} />
      </div>
    );
  }
}
