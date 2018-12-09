import * as React from 'react';
import * as ReactDOM from 'react-dom';
import createBrowserHistory from 'history/createBrowserHistory';
import { Provider } from 'mobx-react';
import { RouterStore, syncHistoryWithStore } from 'mobx-react-router';
import { Router } from 'react-router';
import { Route, Switch } from 'react-router';
import App from './App';
import './index.css';
import registerServiceWorker from './registerServiceWorker';

import UiStore from "./stores/UiStore";

const browserHistory = createBrowserHistory();
const routingStore = new RouterStore();
const uiStore = new UiStore();

const stores = {
  routing: routingStore,
  ui: uiStore
}

const history = syncHistoryWithStore(browserHistory, routingStore);

ReactDOM.render(
  <Provider {...stores}>
    <Router history={history}>
      <Switch>
        <Route path="/" component={App} />
      </Switch>
    </Router>
  </Provider>,
  document.getElementById('root') as HTMLElement
);
registerServiceWorker();
