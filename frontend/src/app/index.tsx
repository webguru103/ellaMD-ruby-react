import * as React from 'react';
import { hot } from 'react-hot-loader';
import { Router, Route, Switch } from 'react-router';
import { Root } from 'app/containers/Root';
import { TodoApp } from 'app/containers/TodoApp';
import { PatientForm } from './containers/Patient';

// render react DOM
export const App = hot(module)(({ history }) => (
  <Root>
    <Router history={history}>
      <Switch>
        <Route exact path="/" component={PatientForm} />} />
        <Route exact path="/todo" component={TodoApp} />
        <Route exact path="/patient" component={PatientForm} />} />
      </Switch>
    </Router>
  </Root>
));
