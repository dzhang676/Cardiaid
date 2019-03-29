import React, { Component } from "react";
import Card from "@material-ui/core/Card";
import CardActions from "@material-ui/core/CardActions";
import CardContent from "@material-ui/core/CardContent";
import dashboardStyles from "../../Styles/dashboardStyles.css";

export default class PatientTables extends React.Component {
  constructor(props) {
    super(props);
    this.state = { patientList: props.patientList, cardPress: props.cardPress };
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.patientList !== this.state.patientList) {
      this.setState({ patientList: nextProps.patientList });
    }
    if (nextProps.cardPress !== this.state.cardPress) {
      this.setState({ cardPress: nextProps.cardPress });
    }
  }

  cardGenerator = list => {
    //console.log(list);
    for (var i in list) {
      if (this.state.cardPress) {
        return (
          <Card
            style={{ cursor: "pointer" }}
            id={i}
            onClick={() => {
              this.props.getId(i);
            }}
          >
            <CardContent>
              <div
                className="row verticalAlign"
                style={{ paddingLeft: "0px", paddingRight: "5%" }}
              >
                <p className="nameFont">{list[i].name.slice(1, -1)}</p>
                <p
                  style={{
                    paddingLeft: "42.25%",
                    paddingBottom: "5%",
                    position: "absolute"
                  }}
                >
                  {list[i].heartRate}
                </p>
                <p
                  style={{
                    paddingLeft: "87.25%",
                    paddingBottom: "5%",
                    position: "absolute"
                  }}
                >
                  {list[i].bloodOxygen}%
                </p>
              </div>
            </CardContent>
          </Card>
        );
      } else {
        return (
          <Card
            style={{ cursor: "pointer" }}
            id={i}
            onClick={() => {
              this.props.getId(i);
            }}
          >
            <CardContent>
              <div
                className="row verticalAlign"
                style={{ paddingLeft: "0px", paddingRight: "5%" }}
              >
                <p className="nameFont">{list[i].name.slice(1, -1)}</p>
                <p
                  style={{
                    paddingLeft: "28.75%",
                    paddingBottom: "3.25%",
                    position: "absolute"
                  }}
                >
                  {list[i].roomNumber}
                </p>
                <p
                  style={{
                    paddingLeft: "60.5%",
                    paddingBottom: "3.25%",
                    position: "absolute"
                  }}
                >
                  {list[i].heartRate}
                </p>
                <p
                  style={{
                    paddingLeft: "91.75%",
                    paddingBottom: "3.25%",
                    position: "absolute"
                  }}
                >
                  {list[i].bloodOxygen}%
                </p>
              </div>
            </CardContent>
          </Card>
        );
      }
    }
  };

  render() {
    if (this.state.cardPress) {
      return (
        <div style={{ paddingRight: "60%" }}>
          <div className="cardRow tableFont">
            <p>Name</p>
            <p>Heart Rate (BPM)</p>
            <p>Blood Oxygen</p>
          </div>
          {this.cardGenerator(this.state.patientList)}
        </div>
      );
    } else {
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
}
