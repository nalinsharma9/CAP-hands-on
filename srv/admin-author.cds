using my.bookshop as my from '../db/schema';

service adminAuthor {
    @Capabilities : { Insertable: true, Deletable: true , Updatable:true}
    entity Authors as projection on my.Authors;
}