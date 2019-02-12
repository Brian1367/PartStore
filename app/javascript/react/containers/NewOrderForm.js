// import React, { Component } from "react";
// import YearSelector from "../components/yearSelector";
// import { browserHistory } from "react-router"
//
// class NewOrderForm extends Component {
//   // constructor(props) {
//     // super(props);
//     // this.state = {
//     //   make: "",
//     //   year: "",
//     //   model: "",
//     //   modelsForSelect: []
//       // yearSelector: 1980
//     // }
//
//
//   // updateModelsForSelection(){
//   //   let payload = {
//   //     make: this.state.make
//   //     year: this.state.year
//   //   }
//   //   fetch("/api/v1/models", {
//   //     method: "POST",
//   //     body: JSON.stringify(payload)
//   //   })
//   //   .then((responseBody) => {
//   //     this.setState({modelsForSelect: responseBody.models})
//   //   })
//   // }
//
//   render() {
//     return (
//       <div>
//
//       <form>
//        <label>
//         <input
//           type="text"
//           label="Make"
//           name="make"
//         />
//         <input
//           type="text"
//           label="Year"
//           name="year"
//         />
//
//
//         <input
//           type="text"
//           label="Model"
//           name="model"
//
//         />
//         <input
//           type="radio"
//           name="type_of_drive"
//         />
//         <input
//           type="text"
//           name="sub_model (optional)"
//         />
//         <input
//           type="text"
//           name="category"
//         </label>
//
//       </form>
//
//
//
//
//
//
//
//
//       />
//       <div className="button-group">
//       <button className="button">Clear</button>
//       <input className="button" type="submit" value="Submit" />
//       </div>
//       </div>
//
//     );
//
//
//   }
// }
// export default NewOrderForm;
// this would create a dropdown based on what is in this.state.modelsForSelectß

  // onBlur={this.updateModelsForSelection}
  // <h1> Select Year! </h1>
  //
  // <YearSelector
  // content={this.state.YearSelector}
  // label="Year"
  // name="year"

  import React, { Component } from "react";
  import YearField from "../components/YearField";
  import MakeField from "../components/MakeField";
  import ModelField from "../components/ModelField";
  import CategoryField from "../components/CategoryField";
  import { browserHistory } from "react-router";

  class NewOrderForm extends Component {
    constructor(props) {
      super(props);
      this.state = {

        Year: "",
        Make: "",
        Model: "",
        Category: "",

      };
      this.handleYearChange = this.handleYearChange.bind(this);
      this.handleMakeChange = this.handleMakeChange.bind(this);
      this.handleModelChange = this.handleModelChange.bind(this);
      this.handleCategoryChange = this.handleCategoryChange.bind(this);
      this.handleSubmit = this.handleSubmit.bind(this),
      this.handleClear = this.handleClear.bind()
    }

    // addNewReview(formPayload) {
    //   let jsonStringInfo = JSON.stringify(formPayload);
    //   fetch(`/api/v1/airlines/${this.props.id}/s`, {
    //     method: "POST",
    //     body: jsonStringInfo,
    //     headers: {
    //       Accept: "application/json",
    //       "Content-Type": "application/json"
    //     },
    //     credentials: "same-origin"
    //   })
    //     .then(response => {
    //       if (response.ok) {
    //         return response;
    //       } else {
    //         let errorMessage = `${response.status} (${response.statusText})`,
    //           error = new Error(errorMessage);
    //         throw error;
    //       }
    //     })
    //     .then(formPayload => formPayload.json())
    //     .then(formPayload => {
    //       this.setState({
    //       s: this.state.s.concat(formPayload)
    //     })
    //     console.log(this.props.id);
    //       browserHistory.push(`/airlines/${this.props.id}`);
    //     });
    // }

    handleMakeChange(event) {
      this.setState({ Make: event.target.value });
    }
    handleModelChange(event) {
      this.setState({ Model: event.target.value });
    }
    handleCategoryChange(event) {
      this.setState({ Category: event.target.value });
    }

    handleYearChange(event) {
      this.setState({ Year: event.target.value });
    }
    handleClear(event){

    }

    handleSubmit(event) {
      event.preventDefault();
      // event.target.reset();

      let formPayload = {
        year: this.state.Year,
        make: this.state.Make,
        model: this.state.Model,
        category: this.state.Category,
        order_id: this.props.id
      };


      this.props.addNewOrder(formPayload);
      this.setState({Year: '' ,
                     Make: 1 ,
                     Model: 1 ,
                     Category: 1,

                   });
     }


    render() {
      return (
        <div>
          <h3 className="new-order-header"> Tell us what you need </h3>
          <form className="new-order-form callout"
          onSubmit={this.handleSubmit}>
            <YearField
              content={this.state.Year}
              label=" Year "
              name="-Year"
              handleYearChange={this.handleYearChange}
            />
            <MakeField
              content={this.state.Make}
              label="Make"
              name="Make"
              handleMakeChange={this.handleMakeChange}
            />
            <ModelField
              content={this.state.Model}
              label="Model"
              name="model"
              handleModelChange={this.handleModelChange}
            />
            <CategoryField
              content={this.state.Category}
              label="Category"
              name="category"
              handleCategoryChange={this.handleCategoryChange}
            />
          


            <div className="button-group">
              <button className="button" onClick={this.handleClear}>Clear</button>
              <input className="button" type="submit" value="submit" />
            </div>
          </form>
        </div>
      );
    }
  }

  export default NewOrderForm;
