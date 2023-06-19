using my.bookshop as my from '../db/schema';

service adminBook {
    @Capabilities : { Insertable: true, Deletable: true , Updatable:true}
    entity Books as projection on my.Books;
}