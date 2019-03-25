import React, { Component } from "react";
import Drawer from "@material-ui/core/Drawer";
import menuStyles from "../../Styles/menuStyles.css";
import OpenIcon from "@material-ui/icons/ZoomOutMap";
import { Line } from "react-chartjs-2";

export default class HalfMenu extends React.Component {
  constructor(props) {
    super(props);
    this.state = { currentList: props.currentList, cardPress: props.cardPress };
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.currentList !== this.state.currentList) {
      this.setState({ currentList: nextProps.currentList });
    }
    if (nextProps.cardPress !== this.state.cardPress) {
      this.setState({ cardPress: nextProps.cardPress });
    }
  }

  createGraph = () => {
    const data = {
      labels: [
        "19:00",
        "19:15",
        "19:30",
        "19:45",
        "20:00",
        "20:15",
        "20:30",
        "20:45",
        "21:00",
        "21:15"
      ],
      datasets: [
        {
          label: "Heart Rate",
          fill: false,
          lineTension: 0.1,
          backgroundColor: "#373749",
          borderColor: "purple",
          borderCapStyle: "butt",
          borderDash: [],
          borderDashOffset: 0.0,
          borderJoinStyle: "miter",
          pointBorderColor: "purple",
          pointBackgroundColor: "purple",
          pointBorderWidth: 1,
          pointHoverRadius: 5,
          pointHoverBackgroundColor: "rgba(75,192,192,1)",
          pointHoverBorderColor: "rgba(220,220,220,1)",
          pointHoverBorderWidth: 2,
          pointRadius: 1,
          pointHitRadius: 10,
          data: [55, 59, 66, 70, 73, 65, 60, 55, 67, 78],
          color: "white"
        }
      ]
    };
    return (
      <Line
        data={data}
        height={300}
        options={{
          maintainAspectRatio: false
        }}
        style={{ paddingLeft: "20px", width: "50px" }}
      />
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
          <div>
            <p className="menuNameFont">{list.name.slice(1, -1)}</p>
          </div>
          <div
            style={{
              backgroundColor: "#373749",
              width: "600px",
              marginLeft: "40px"
            }}
          >
            {this.createGraph()}
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
