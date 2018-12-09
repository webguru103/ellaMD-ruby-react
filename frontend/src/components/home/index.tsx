import * as React from 'react';
import { inject, observer } from 'mobx-react';

import './Home.css';

@inject('routing')
@observer
class Home extends React.Component<{routing?: any}, object> {

  public render() {
    // const { push } = this.props.routing;
    // To-do: add UI store to change theme.
    return (
      <div className="App-intro">
        <p>EllaMD Coding Challenge</p>
      </div>
    );
  }
}

export default Home;
