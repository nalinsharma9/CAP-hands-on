using my.bookshop as my from '../db/schema';

//service CatalogService @(impl: 'srv/cat-service.js') {
service CatalogService {
    @readonly
    entity Books as projection on my.Books;
    @readonly
    entity Authors as projection on my.Authors;

    //@requires: 'authenticated-user'
    @insertonly entity Orders as projection on my.Orders;

  



}


