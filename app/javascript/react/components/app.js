import React from 'react'
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import NewOrderForm from '../containers/NewOrderForm'

export const App = (props) => {
  return (
    <div>
      <Router history={browserHistory}>
        <Route path='/orders/new' component={NewOrderForm} />
      </Router>
    </div>
  );
}

export default App;
