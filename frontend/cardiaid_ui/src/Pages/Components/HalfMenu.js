import React, { Component } from "react";
import Drawer from "@material-ui/core/Drawer";
import menuStyles from "../../Styles/menuStyles.css";
import OpenIcon from "@material-ui/icons/ZoomOutMap";
import { Line } from "react-chartjs-2";
import CanvasJSReact from "../../canvasjs.react";
var CanvasJS = CanvasJSReact.CanvasJS;
var CanvasJSChart = CanvasJSReact.CanvasJSChart;

export default class HalfMenu extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentList: props.currentList,
      cardPress: props.cardPress,
      heartRate: true,
      bloodOxygen: false
    };
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.currentList !== this.state.currentList) {
      this.setState({ currentList: nextProps.currentList });
    }
    if (nextProps.cardPress !== this.state.cardPress) {
      this.setState({ cardPress: nextProps.cardPress });
    }
  }

  createGraph = list => {
    const options = {
      title: {
        text: "title",
        padding: {
          top: 5
        },
        fontColor: "#424259"
      },
      data: [
        {
          type: "line",
          dataPoints: [
            { label: "19:00", y: 50 },
            { label: "19:15", y: 60 },
            { label: "19:30", y: 65 },
            { label: "19:45", y: 60 },
            { label: "20:00", y: 57 }
          ],
          color: "#ad1aa1"
        }
      ],
      axisX: {
        labelFontColor: "white",
        title: "title",
        titleFontColor: "#424259",
        margin: 2,
        tickLength: 10,
        gridColor: "#4f5763",
        lineColor: "#4f5763",
        tickColor: "#424259",
        labelFontSize: 13
      },
      axisY: {
        labelFontColor: "white",
        gridColor: "#4f5763",
        tickLength: 5,
        tickColor: "#424259",
        lineColor: "#4f5763",
        labelFontSize: 13
      },
      height: 260,
      width: 615,
      backgroundColor: "#424259"
    };
    return (
      <div>
        <CanvasJSChart options={options} />
        <div
          style={{
            position: "absolute",
            backgroundColor: "#424259",
            height: "20px",
            width: "60px",
            marginTop: "-20px"
          }}
        />
      </div>
    );
  };

  displayInfo = list => {
    return (
      <div
        style={{
          right: "8.9%",
          marginTop: "-10px"
        }}
        className="halfMenu"
      >
        <div className="menuCol">
          <div className="menuRow" style={{ marginLeft: "78%" }}>
            <p className="expandFont" style={{ paddingRight: "15px" }}>
              show full profile
            </p>
            <OpenIcon
              style={{
                color: "white",
                height: "25px",
                width: "25px",
                marginTop: "11px",
                cursor: "pointer"
              }}
            />
          </div>
          <div style={{ marginTop: "-15px" }}>
            <p className="menuNameFont">{list.name.slice(1, -1)}</p>
          </div>
          <div
            className="menuRow"
            style={{
              marginLeft: "40px",
              paddingBottom: "10px",
              marginTop: "-25px"
            }}
          >
            <div
              className="menuCol"
              onClick={() => {
                this.setState({ heartRate: true, bloodOxygen: false });
              }}
            >
              <p
                style={{
                  marginBottom: "2px",
                  color: this.state.heartRate ? "grey" : "white",
                  cursor: "pointer"
                }}
                className="switchFont"
              >
                heart rate
              </p>
              <div
                className="lineStyle"
                style={{
                  border: this.state.heartRate
                    ? "1.5px solid #ff0000"
                    : "1.5px solid white"
                }}
              />
            </div>
            <div
              className="menuCol"
              onClick={() => {
                this.setState({ heartRate: false, bloodOxygen: true });
              }}
            >
              <p
                style={{
                  marginBottom: "2px",
                  color: this.state.bloodOxygen ? "grey" : "white",
                  cursor: "pointer"
                }}
                className="switchFont"
              >
                blood oxygen
              </p>
              <div
                className="lineStyle"
                style={{
                  border: this.state.bloodOxygen
                    ? "1.5px solid #ff0000"
                    : "1.5px solid white"
                }}
              />
            </div>
            <p
              style={{
                position: "absolute",
                marginTop: "17px",
                marginLeft: "80%"
              }}
              className="sensorFont"
            >
              {list.heartRate} bpm
            </p>
          </div>
          <div
            style={{
              marginLeft: "40px",
              width: "4000px"
            }}
          >
            {this.createGraph(this.state.currentList)}
          </div>
          <div
            className="menuCol"
            style={{ marginLeft: "40px", marginTop: "-10px" }}
          >
            <p className="subTitleFont">Patient Information</p>
            <div
              className="informationStyle menuRow informationFont"
              style={{ paddingLeft: "20px" }}
            >
              <div className="menuCol">
                <p>Assigned Nurse:</p>
                <p>Allergies:</p>
              </div>
              <div className="menuCol" style={{ marginLeft: "20px" }}>
                <p>{list.nurse}</p>
                <p>{list.allergies.slice(1, -1)}</p>
              </div>
              <div className="menuCol" style={{ marginLeft: "110px" }}>
                <p>Medical Conditions:</p>
                <p>Medications:</p>
              </div>
              <div className="menuCol" style={{ marginLeft: "20px" }}>
                <p>{list.medicalConditions.slice(1, -1)}</p>
                <p>{list.medication.slice(1, -1)}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  };

  render() {
    console.log(this.state.currentList);
    if (this.state.cardPress) {
      return this.displayInfo(this.state.currentList);
    } else {
      return null;
    }
  }
}
