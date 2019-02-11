import { observable } from 'mobx';

export class PatientModel {
  @observable public id: number;
  @observable public name: string;
  @observable public address: string;
  @observable public dateOfBirth: string;

  constructor(id: number, name: string, address: string, dateOfBirth: string) {
    this.id = id;
    this.name = name;
    this.address = address;
    this.dateOfBirth = dateOfBirth;
  }
}

export default PatientModel;
