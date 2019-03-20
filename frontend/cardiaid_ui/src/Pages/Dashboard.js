import React, { Component } from "react";
import Navbar from "./Components/Navbar";
import dashboardStyles from "../Styles/dashboardStyles.css";
import axios from "axios";
import PatientTables from "./Components/PatientTables";

export default class Dashboard extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      height: props.height,
      width: props.width,
      button1: true,
      button2: false,
      patientList: []
    };
  }

  componentDidMount() {
    axios
      .get("http://localhost:5000/patient")
      .then(response => {
        var converter = Object.values(response.data);
        this.setState({ patientList: converter[0] });
      })
      .catch(error => console.log(error));
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
    console.log(this.state.patientList);
    return (
      <div className="overlay col">
        <Navbar />
        <div className="row">
          <b>
            <p className="mainFont">Patient Board</p>
          </b>
          <div
            style={{
              textAlign: "center",
              marginLeft: "30px",
              marginTop: "6px"
            }}
            className="verticalAlign"
          >
            <button
              type="button home-button"
              className={this.state.button1 ? "button1" : "button2"}
              onClick={() => {
                this.setState({ button1: true, button2: false });
              }}
            >
              alert cases
            </button>
            <button
              type="button contact-button"
              className={this.state.button2 ? "button1" : "button2"}
              onClick={() => {
                this.setState({ button1: false, button2: true });
              }}
            >
              alphabetical names
            </button>
          </div>
        </div>
        <PatientTables patientList={this.state.patientList} />
      </div>
    );
  }
}
