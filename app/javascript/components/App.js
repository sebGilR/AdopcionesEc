import React from 'react'; 
import { Switch, Route } from 'react-router-dom';
import Airlines from '../components/Airlines';
import Airline from '../components/Airline';

const App = () => (
  <Switch>
    <Route exact path="/" component={Airlines} />
    <Route exact path="/:id" component={Airline} />
  </Switch>
)

export default App;