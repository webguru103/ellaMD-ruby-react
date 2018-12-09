import * as React from 'react';

import '../../App.css';

import { inject, observer } from 'mobx-react';
import logo from '../../assets/logo.svg';
import UiStore from "../../stores/UiStore";
import { Link } from 'react-router-dom';

@inject('ui')
@observer
class Header extends React.Component<{ui?: UiStore}, object> {

  public updateTheme = (e: React.SyntheticEvent<EventTarget>): void => {
    this.props.ui.toggleTheme()
  }
  public render() {
    // const { push } = this.props.routing;
    // To-do: add UI store to change theme.
    return (
      <div>
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
        </header>
        <div>
          <Link to="/home">Home</Link>
          <Link to="/patient">Patient</Link>
        </div>
      </div>
    );
  }
}

export default Header;
