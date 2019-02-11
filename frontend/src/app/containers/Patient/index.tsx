import * as React from 'react';
import { inject, observer } from 'mobx-react';
import { Field } from 'app/components/common/InputText';
import SearchList from 'app/components/common/SearchList';
import { FieldState } from 'formstate';
import DatePicker from 'material-ui/DatePicker';
import * as styles from './style.css';

import {
  STORE_FORM,
  STORE_ROUTER
} from 'app/constants';

export interface PatientFormProps {
}

export interface PatientFormState {
}

const nameFieldState = new FieldState('').validators((val) => !val.trim() && 'Value required');
const addressFieldState = new FieldState('').validators((val) => !val.trim() && 'Value required');

@inject(STORE_FORM, STORE_ROUTER)
@observer
export class PatientForm extends React.Component<PatientFormProps, PatientFormState> {
  render() {    
    return (
      <div>
        <Field 
          id="name"
          label="Patient Name"
          fieldState={nameFieldState}
        />
        <Field 
          id="address"
          label="Address"
          fieldState={addressFieldState}
        />
        <DatePicker
          className={styles.datapickerMarginTop}
          hintText="Date of Birth"
        />
        <div className={styles.divider}></div>
        <SearchList />
      </div>
    );
  }
}
 