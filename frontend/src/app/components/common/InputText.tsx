import * as React from 'react';
import { observer } from 'mobx-react';
import TextField from 'material-ui/TextField';
import { FieldState } from 'formstate';

export type FieldProps = {
  id: string,
  label: string,
  fieldState: FieldState<string>
};

export const Field = observer((props: FieldProps) => (
  <TextField
    id={props.id}
    fullWidth={true}
    floatingLabelText={props.label}
    value={props.fieldState.value}
    onChange={function() { props.fieldState.onChange(arguments[1]) }}
    errorText={props.fieldState.error}
  />
));
