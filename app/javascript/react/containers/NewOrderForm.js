import React, { Component } from "react";
import YearSelector from "../components/yearSelector";
import { browserHistory } from "react-router"

class NewOrderForm extends Component {
  constructor(props) {
    super(props);
    this.state = {
      yearSelector: 1930
    }
  }

  render() {
    return (
      <div>
      <h1> Select Year! </h1>

      <YearSelector
      content={this.state.YearSelector}
      label="YearSelector"
      name="year"

      />
      <div className="button-group">
      <button className="button">Clear</button>
      <input className="button" type="submit" value="Submit" />
      </div>
      </div>

    );


  }
}
export default NewOrderForm;
