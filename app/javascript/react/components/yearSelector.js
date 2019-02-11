import React from "react";

const YearSelector = props => {
  let years = [];
  for (let i = 1930; i < 2020; i++) {
    years.push(
      <option value={`${i}`} key={i}>
        {i}
      </option>
    );
  }
  return (
    <div>
      <label>{props.label}</label>
      <select
        id={props.id}
        name="YearSelector"
        onChange={props.handleYearChange}
      >
        {years}
      </select>
    </div>
  );
};

export default YearSelector;
