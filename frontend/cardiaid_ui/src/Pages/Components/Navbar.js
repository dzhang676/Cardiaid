import React from "react";
import AppBar from "@material-ui/core/AppBar";
import MenuIcon from "@material-ui/icons/Menu";
import SearchIcon from "@material-ui/icons/Search";
import dashboardStyles from "../../Styles/dashboardStyles.css";
import { Form, FormGroup } from "reactstrap";

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
        <div className="row verticalAlign">
          <MenuIcon
            style={{
              height: "35px",
              width: "35px",
              color: "black"
            }}
          />
          <p className="font" style={{ paddingLeft: "15px" }}>
            Cardiaid
          </p>
          <div className="searchBox row" style={{ marginLeft: "70%" }}>
            <SearchIcon
              style={{ height: "25px", width: "25px", color: "#aaaaaa" }}
            />
            <Form
              style={{
                position: "absolute",
                marginLeft: "35px",
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
