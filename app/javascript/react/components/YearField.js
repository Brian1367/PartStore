import React from "react";

const YearField = props => {
  return (
    <div>
      <label>{props.label}</label>
      <textarea
        name="year-field"
        type="text"
        value={props.content}
        onChange={props.handleYearChange}
      />
    </div>
  );
};

export default YearField;
