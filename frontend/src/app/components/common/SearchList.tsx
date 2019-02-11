import * as React from 'react';
import * as _ from 'lodash';
import * as Autosuggest from 'react-autosuggest';
import match from 'autosuggest-highlight/umd/match';
import parse from 'autosuggest-highlight/umd/parse';
import TextField from 'material-ui/TextField';
import Paper from 'material-ui/Paper';
import MenuItem from 'material-ui/MenuItem';
// import Popover from 'material-ui/Popover';
import * as styles from './common.css';

import { FieldState } from 'formstate';

const suggestions = [
  { label: 'Afghanistan' },
  { label: 'Aland Islands' },
  { label: 'Albania' },
  { label: 'Algeria' },
  { label: 'American Samoa' },
  { label: 'Andorra' },
  { label: 'Angola' },
  { label: 'Anguilla' },
  { label: 'Antarctica' },
  { label: 'Antigua and Barbuda' },
  { label: 'Argentina' },
  { label: 'Armenia' },
  { label: 'Aruba' },
  { label: 'Australia' },
  { label: 'Austria' },
  { label: 'Azerbaijan' },
  { label: 'Bahamas' },
  { label: 'Bahrain' },
  { label: 'Bangladesh' },
  { label: 'Barbados' },
  { label: 'Belarus' },
  { label: 'Belgium' },
  { label: 'Belize' }
]

const renderInputComponent = (inputProps) => {
  const { inputRef = () => {}, ref, ...other } = inputProps;

  return (
    <TextField
      id="searchInput"
      name="searchInput"
      floatingLabelText="Ingredient of Formulation"
      floatingLabelFixed={true}
      fullWidth
      inputprops={{
        inputRef: node => {
          ref(node);
          inputRef(node);
        },
        classes: {
          input: styles.input,
        },
      }}
      {...other}
    />
  );
}

const renderSuggestion = (suggestion, { query, isHighlighted }) => {
  const matches = match(suggestion.label, query);
  const parts = parse(suggestion.label, matches);

  return (
    <MenuItem checked={isHighlighted} containerElement="div">
      <div>
        {parts.map((part, index) => {
          return part.highlight ? (
            <span key={String(index)} style={{ fontWeight: 500 }}>
              {part.text}
            </span>
          ) : (
            <strong key={String(index)} style={{ fontWeight: 300 }}>
              {part.text}
            </strong>
          );
        })}
      </div>
    </MenuItem>
  );
}

const getSuggestions = (value) => {
  const inputValue = _.deburr(value.trim()).toLowerCase();
  const inputLength = inputValue.length;
  let count = 0;

  return inputLength === 0
    ? []
    : suggestions.filter(suggestion => {
        const keep =
          count < 5 && suggestion.label.slice(0, inputLength).toLowerCase() === inputValue;

        if (keep) {
          count += 1;
        }

        return keep;
      });
}

const getSuggestionValue = (suggestion) => {
  return suggestion.label;
}

export type FieldProps = {
  id: string,
  label: string,
  fieldState: FieldState<string>
};

class IntegrationAutosuggest extends React.Component<{}> {
  state = {
    single: '',
    popper: '',
    suggestions: [],
    popperNode: null
  };

  handleSuggestionsFetchRequested = ({ value }) => {
    this.setState({
      suggestions: getSuggestions(value),
    });
  };

  handleSuggestionsClearRequested = () => {
    this.setState({
      suggestions: [],
    });
  };

  handleChange = name => (event, { newValue }) => {
    this.setState({
      [name]: newValue,
    });
  };

  render() {
    const autosuggestProps = {
      renderInputComponent,
      suggestions: this.state.suggestions,
      onSuggestionsFetchRequested: this.handleSuggestionsFetchRequested,
      onSuggestionsClearRequested: this.handleSuggestionsClearRequested,
      getSuggestionValue,
      renderSuggestion,
    };

    return (
      <div className={styles.root}>
        <Autosuggest
          {...autosuggestProps}
          inputProps={{
            styles,
            placeholder: 'Type an ingredient or a formulation',
            value: this.state.single,
            onChange: this.handleChange('single'),
          }}
          theme={{
            container: styles.container,
            suggestionsContainerOpen: styles.suggestionsContainerOpen,
            suggestionsList: styles.suggestionsList,
            suggestion: styles.suggestion,
          }}
          renderSuggestionsContainer={options => (
            <Paper {...options.containerProps}>
              {options.children}
            </Paper>
          )}
        />
        <div className={styles.divider} />
        
      </div>
    );
  }
}

export default IntegrationAutosuggest;
