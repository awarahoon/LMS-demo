import { LightningElement } from 'lwc';
export default class TrackDecoratorWork extends LightningElement {
    test="Amit";
    handleonchange(event){
        this.test = event.target.value
    }
}