import * as React from 'react';
import { Route, Switch } from 'react-router';
import { inject, observer } from 'mobx-react';

import Header from './components/common/Header';
import Home from './components/home';
import Patient from './components/patient';

import './App.css';

@inject('routing')

@observer
class App extends React.Component<{routing?: any}, object> {
  render() {
    return (
      <div className="App">
        <Header />
        <div>
          <Switch>
            <Route exact path="/home" component={Home} />
            <Route exact path="/patient" component={Patient} />
          </Switch>
        </div>
      </div>
    );
  }
}

export default App;
