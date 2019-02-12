import React from "react";
import { browserHistory, Link } from "react-router";

const OrderShowTile = props => {
  return (

  <div className="order-tile">
      <hr/>
    <div className="row">
      <div >
      <div className="row">
      <div className="large-1 columns">
        </div>
        <div className="large-11 columns">
        <p className="year">{props.year}</p>
        <p className="make">{props.make}</p>
        <p className="model">{props.model}</p>
        <p className="category">{props.category}</p>
        </div>
        </div>
      </div>
    </div>
  </div>
  );
};

export default OrderShowTile;
