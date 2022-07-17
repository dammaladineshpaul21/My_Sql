show databases ;
CREATE DATABASE db_LibraryManagement;
Use db_LibraryManagement;
CREATE TABLE if not exists tbl_publisher
(
    publisher_publishername varchar(255) primary key not null,
    publisher_publisheraddress varchar(255) not null,
    publisher_publisherphone varchar(255) not null
    );
-- Creating Table for Book id and this pulisher with nae of the book --
CREATE TABLE if not exists tbl_book
(
    book_Bookid        int primary key not null auto_increment,
    book_Title         varchar(100)    not null,
    book_publisherName VARCHAR(100)    not null
    );

CREATE TABLE tbl_library_branch
(
    library_branch_BranchID INT PRIMARY KEY NOT NULL auto_increment,
    library_branch_BranchName VARCHAR(100) NOT NULL,
    library_branch_BranchAddress VARCHAR(200) NOT NULL
);
select *
from tbl_book;
#drop table tbl_publisher;
INSERT INTO tbl_publisher
(publisher_publishername, publisher_publisheraddress, publisher_publisherphone)
VALUES
    ('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
    ('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
    ('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
    ('Chilton Books','Not Available','Not Available'),
    ('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'),
    ('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),
    ('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-5300'),
    ('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','+81-3-5577-6507'),
    ('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
    ('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
    ('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
    ('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
    ('W.W. Norton',' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
    ('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
    ('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
    ('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745');

INSERT INTO tbl_book
(book_Title, book_PublisherName)
VALUES
    ('The Name of the Wind', 'DAW Books'),
    ('It', 'Viking'),
    ('The Green Mile', 'Signet Books'),
    ('Dune', 'Chilton Books'),
    ('The Hobbit', 'George Allen & Unwin'),
    ('Eragon', 'Alfred A. Knopf'),
    ('A Wise Mans Fear', 'DAW Books'),
    ('Harry Potter and the Philosophers Stone', 'Bloomsbury'),
    ('Hard Boiled Wonderland and The End of the World', 'Shinchosa'),
    ('The Giving Tree', 'Harper and Row'),
    ('The Hitchhikers Guide to the Galaxy', 'Pan Books'),
    ('Brave New World', 'Chalto & Windus'),
    ('The Princess Bride', 'Harcourt Brace Jovanovich'),
    ('Fight Club', 'W.W. Norton'),
    ('Holes', 'Scholastic'),
    ('Harry Potter and the Chamber of Secrets', 'Bloomsbury'),
    ('Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),
    ('The Fellowship of the Ring', 'George Allen & Unwin'),
    ('A Game of Thrones', 'Bantam'),
    ('The Lost Tribe', 'Picador USA');

# select * from tbl_book where book_publisherName = 'George Allen & Unwin';
TRUNCATE table tbl_library_branch;
INSERT INTO tbl_library_branch
(library_branch_BranchName, library_branch_BranchAddress)
VALUES
    ('Sharpstown','32 Corner Road, New York, NY 10012'),
    ('Central','491 3rd Street, New York, NY 10014'),
    ('Saline','40 State Street, Saline, MI 48176'),
    ('Ann Arbor','101 South University, Ann Arbor, MI 48104');

select * from tbl_library_branch;
update tbl_library_branch
set library_branch_BranchName = 'Central_Mall'
where library_branch_BranchID = 2;