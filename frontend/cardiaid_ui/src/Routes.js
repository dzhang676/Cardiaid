import React from "react";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import Login from "./Pages/Login";

export default class Routes extends React.Component {
  constructor(props) {
    super(props);
    this.state = { test: this.props.test };
  }

  render() {
    return (
      <Router>
        <div>
          <Route exact path="/">
            <Login test={this.state.test} />
          </Route>
        </div>
      </Router>
    );
  }
}

// function Routes() {
//   return (
//     <Router>
//       <div>
//         <Route exact path="/" component={LoginPage} />
//       </div>
//     </Router>
//   );
//
