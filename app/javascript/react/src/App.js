import React from 'react';

const App = (props) => {
  return(
    <div className="mainContainer">
      <Router history={browserHistory}>
        <Route path='/'>
          <IndexRoute component={MainContainer} />
          <Route path='/restaurants/new'
            component={RestaurantsContainer}/>
          <Route path='/restaurants/:id' component={RestaurantShowContainer}/>
        </Route>
      </Router>
    </div>
  )
}

export default App
