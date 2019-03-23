import React, { Component } from "react";
import Drawer from "@material-ui/core/Drawer";
import menuStyles from "../../Styles/menuStyles.css";
import OpenIcon from "@material-ui/icons/ZoomOutMap";

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
        </div>
      </div>
    );
  };

  render() {
    console.log(this.state.cardPress);
    if (this.state.cardPress) {
      return this.displayInfo(this.state.currentList);
    } else {
      return null;
    }
  }
}
