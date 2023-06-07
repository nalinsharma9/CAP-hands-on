module.exports = srv =>{
    console.log('Service name: ${srv.name} served at path: ${srv.path}')

    srv.after('READ', 'Books', xs =>{
        console.log(xs);

        const newBooks = []
        xs.forEach(element => {
            
            if(element.stock > 500) {
                element.title = '(10% off!) ' + element.title
            }

            newBooks.push(element);

        })
        console.log(newBooks);
        return newBooks;

    
    })
       
}