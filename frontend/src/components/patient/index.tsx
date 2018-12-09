import * as React from 'react';
import { inject, observer } from 'mobx-react';

import '../../App.css';
import UiStore from "../../stores/UiStore";

@inject('ui')
@observer
class Patient extends React.Component<{ui?: UiStore}, object> {

  public updateTheme = (e: React.SyntheticEvent<EventTarget>): void => {
    this.props.ui.toggleTheme()
  }
  public render() {
    // const { ui } = this.props;
    // To-do: add UI store to change theme.
    return (
      <div>
        <p>Patient Information</p>
      </div>
    );
  }
}

export default Patient;
