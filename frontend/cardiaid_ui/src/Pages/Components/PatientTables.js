import React, { Component } from "react";
import Card from "@material-ui/core/Card";
import CardActions from "@material-ui/core/CardActions";
import CardContent from "@material-ui/core/CardContent";
import dashboardStyles from "../../Styles/dashboardStyles.css";

export default class PatientTables extends React.Component {
  constructor(props) {
    super(props);
    this.state = { patientList: props.patientList };
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.patientList !== this.state.patientList) {
      this.setState({ patientList: nextProps.patientList });
    }
  }

  cardGenerator = list => {
    for (var i in list) {
      return (
        <Card>
          <CardContent>
            <div
              className="row verticalAlign"
              style={{ paddingLeft: "0px", paddingRight: "5%" }}
            >
              <p className="nameFont">{list.name.slice(1, -1)}</p>
              <p style={{ paddingLeft: "19.75%" }}>{list.roomNumber}</p>
              <p style={{ paddingLeft: "31.75%" }}>{list.heartRate}</p>
              <p style={{ paddingLeft: "30.75%" }}>{list.bloodOxygen}</p>
            </div>
          </CardContent>
        </Card>
      );
    }
  };

  render() {
    return (
      <div style={{ paddingRight: "40%" }}>
        <div className="cardRow tableFont">
          <p>Name</p>
          <p>Room Number</p>
          <p>Heart Rate (BPM)</p>
          <p>Blood Oxygen</p>
        </div>
        {this.cardGenerator(this.state.patientList)}
      </div>
    );
  }
}
