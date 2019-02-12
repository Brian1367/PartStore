import React from "react";

const ModelField = props => {
  return (
    <div>
      <label>{props.label}</label>
      <textarea
        name="model-field"
        type="text"
        value={props.content}
        onChange={props.handleModelChange}
      />
    </div>
  );
};

export default ModelField;
