import React from "react";

const MakeField = props => {
  return (
    <div>
      <label>{props.label}</label>
      <textarea
        name="make-field"
        type="text"
        value={props.content}
        onChange={props.handleMakeChange}
      />
    </div>
  );
};

export default MakeField;
