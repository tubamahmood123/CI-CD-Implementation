import { LightningElement,track } from 'lwc';

export default class SampleForm extends LightningElement {

    @track errors={
        "FirstName":"Please Enter the FirstName",
        "LastName":"Please Enter the LastName"
    };

    handleErrors(){

        this.template.querySelectorAll("lightning-input").forEach(item => {
            let val=item.value;
            let label=item.label;
            if(!val){
                console.log('this.errors[label]',this.errors[label]);
                item.setCustomValidity(this.errors[label]);
            }else{
                item.setCustomValidity("");
            }
            item.reportValidity();
        });
    }
}