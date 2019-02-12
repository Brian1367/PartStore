import React from "react";

const CategoryField = props => {
  return (
    <div>
      <label>{props.label}</label>
      <textarea
        name="category-field"
        type="text"
        value={props.content}
        onChange={props.handleCategoryChange}
      />
    </div>
  );
};

export default CategoryField;
