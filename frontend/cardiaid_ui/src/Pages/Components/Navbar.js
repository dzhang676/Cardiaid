import React from "react";
import PropTypes from "prop-types";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";
import InputBase from "@material-ui/core/InputBase";
import Badge from "@material-ui/core/Badge";
import MenuItem from "@material-ui/core/MenuItem";
import Menu from "@material-ui/core/Menu";
import { fade } from "@material-ui/core/styles/colorManipulator";
import { withStyles } from "@material-ui/core/styles";
import MenuIcon from "@material-ui/icons/Menu";
import SearchIcon from "@material-ui/icons/Search";
import AccountCircle from "@material-ui/icons/AccountCircle";
import MailIcon from "@material-ui/icons/Mail";
import NotificationsIcon from "@material-ui/icons/Notifications";
import MoreIcon from "@material-ui/icons/MoreVert";
import dashboardStyles from "../../Styles/dashboardStyles.css";
import {
  Button,
  Form,
  FormGroup,
  Label,
  Input,
  FormText,
  FormFeedback
} from "reactstrap";

export default class Navbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  render() {
    return (
      <AppBar
        style={{
          height: "60px",
          width: "100%",
          backgroundColor: "white",
          paddingLeft: "30px"
        }}
      >
        <div class="row">
          <MenuIcon
            style={{
              height: "35px",
              width: "35px",
              color: "black",
              marginTop: "13px"
            }}
            className="verticalAlign"
          />
          <p className="font verticalAlign" style={{ paddingLeft: "15px" }}>
            Cardiaid
          </p>
          <div
            className="searchBox verticalAlign"
            style={{ marginLeft: "70%", marginTop: "20px" }}
          >
            <SearchIcon
              style={{ height: "25px", width: "25px", color: "#aaaaaa" }}
            />
            <Form
              className="verticalAlign"
              style={{
                position: "absolute",
                marginLeft: "32px",
                color: "#aaaaaa"
              }}
            >
              <FormGroup style={{ color: "#aaaaaa" }}>
                <input
                  type="text"
                  placeholder="search"
                  className="formBox"
                  style={{
                    fontSize: "20px",
                    color: "#aaaaaa",
                    marginBottom: "2px"
                  }}
                  //value={this.state.username}
                  //onChange={this.handleChange("username")}
                />
              </FormGroup>
            </Form>
          </div>
        </div>
      </AppBar>
    );
  }
}
