({

	// Your renderer method overrides go here

    render:function(hpr,evt){

      var r =  this.superRender();

        alert('From Render Method-->');

        return r;

    },


    afterrender:function(hpr,evt){

       this.superAfterRender();

        alert('From AfterRender Method-->');

        return r;

    },

    rerender:function(hpr,evt){

      this.superRerender();

        alert('From Rerender Method-->');

        return r;

    },


    unrender:function(hpr,evt){

      var r =  this.superUnrender();

        alert('From Unrender Method-->');

        return r;

    },

})