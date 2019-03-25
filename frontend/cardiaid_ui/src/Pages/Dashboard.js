import React, { Component } from "react";
import Navbar from "./Components/Navbar";
import dashboardStyles from "../Styles/dashboardStyles.css";
import axios from "axios";
import PatientTables from "./Components/PatientTables";
import HalfMenu from "./Components/HalfMenu";

export default class Dashboard extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      height: props.height,
      width: props.width,
      button1: true,
      button2: false,
      patientList: "",
      currentList: "",
      cardPress: false
    };
  }

  componentDidMount() {
    axios
      .get("http://localhost:5000/patient")
      .then(response => {
        var converter = Object.values(response.data);
        var tempData = {
          age: 30,
          alergies: "none",
          birthdate: "1989-03-11",
          bloodOxygen: 90,
          heartRate: 85,
          medicalConditions: "Asian",
          name: "'Nedim Hodzic'",
          notes: "none",
          nurse: 22,
          roomNumber: 87,
          sex: "Male"
        };

        var tempArray = [];
        tempArray.push(converter[0]);
        //tempArray.push(tempData);
        this.setState({ patientList: tempArray });
        //console.log(this.state.patientList[0]);
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

  getId = index => {
    //var id = document.getElementById(ID);
    //console.log(index);
    this.setState({
      currentList: this.state.patientList[index],
      cardPress: !this.state.cardPress
    });
  };

  render() {
    //console.log(this.state.cardPress);
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
        <PatientTables
          patientList={this.state.patientList}
          getId={this.getId}
          cardPress={this.state.cardPress}
        />
        <HalfMenu
          cardPress={this.state.cardPress}
          currentList={this.state.currentList}
        />
      </div>
    );
  }
}
