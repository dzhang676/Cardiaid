import React, { Component } from "react";
import {
  Button,
  Form,
  FormGroup,
  Label,
  Input,
  FormText,
  FormFeedback
} from "reactstrap";
import LoginStyles from "../Styles/loginStyles.css";
import loginImage from "../Images/loginImage.png";
import axios from "axios";

export default class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      height: props.height,
      width: props.width,
      username: "",
      password: "",
      login: props.login,
      usernameReq: false,
      passwordReq: false
    };
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.height !== this.state.height) {
      this.setState({ height: nextProps.height });
    }
    if (nextProps.width !== this.state.width) {
      this.setState({ width: nextProps.width });
    }
    if (nextProps.login !== this.state.login) {
      this.setState({ login: nextProps.login });
    }
  }

  handleChange = name => event => {
    this.setState({
      [name]: event.target.value
    });
  };

  handleLogin = () => {
    if (this.state.username !== "" && this.state.password !== "") {
      this.props.changeState();
      this.setState({ usernameReq: false, passwordReq: false });
    }
    if (this.state.username === "") {
      this.setState({ usernameReq: true });
    }
    if (this.state.password === "") {
      this.setState({ passwordReq: true });
    }
  };

  render() {
    console.log(this.state.login);
    return (
      <div style={{ height: this.state.height, overflowY: "hidden" }}>
        <div className="row">
          <div className="container">
            <div
              className="tag"
              style={{
                height: this.state.height,
                width: this.state.width / 2.5
              }}
            />
            <img
              src={loginImage}
              height={this.state.height}
              width={this.state.width / 2.5}
            />
          </div>
          <div className="col">
            <p className="welcomeFont">Sign into CardiAid</p>
            <p className="smallFont">Enter your details below.</p>
            <Form className="formBox" style={{ marginBottom: "50px" }}>
              <FormGroup>
                <input
                  type="text"
                  placeholder="username"
                  className="usernameFont formBox"
                  value={this.state.username}
                  onChange={this.handleChange("username")}
                />
              </FormGroup>
              <FormFeedback className="feedbackFont">
                {this.state.usernameReq
                  ? "Empty Field - Please fill in your username"
                  : null}
              </FormFeedback>
            </Form>
            <Form className="formBox" style={{ marginBottom: "20px" }}>
              <FormGroup>
                <input
                  type="password"
                  placeholder="password"
                  className="usernameFont formBox"
                  value={this.state.password}
                  onChange={this.handleChange("password")}
                />
              </FormGroup>
              <FormFeedback className="feedbackFont">
                {this.state.passwordReq
                  ? "Empty Field - Please fill in your password"
                  : null}
              </FormFeedback>
            </Form>
            <u>
              <p className="forgotFont">Forgot your password?</p>
            </u>
            <button
              onClick={() => {
                this.handleLogin();
              }}
              className="loginButtonEmpty"
            >
              login
            </button>
          </div>
        </div>
      </div>
    );
  }
}
