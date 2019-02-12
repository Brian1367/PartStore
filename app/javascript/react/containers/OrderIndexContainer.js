import React, { Component } from 'react';
import { browserHistory, Link } from 'react-router';
import OrderShowTile from '../components/OrderShowTile'

class OrderIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {

    }
  }

  render() {
      let orders = this.props.orders.map(order => {
        return(
          <OrderShowTile
           key={order.id}
           id={order.id}
           user={order.user_id}
           year={order.year}
           make={order.make_rating}
           model={order.model_rating}
           category={order.category_rating}
          />
        )
      })
      return (
        <div>
          {orders}
        </div>
    );
  }
}

export default OrderIndexContainer;
