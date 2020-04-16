ClassicEditor
       .create( document.querySelector( '#NoticeContent' ) )
       .then( editor => {
           // console.log( editor );
       } )
       .catch( error => {
           console.error( error );
       } );

