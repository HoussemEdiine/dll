
CREATE TABLE Costumer (
Costumer_ID VARCHAR2(20) CONSTRAINT PK_Costumer PRIMARY KEY ,
costumer_Name  VARCHAR2(20)  NOT NULL ,
costumer_Tel NUMBER 

);

CREATE  TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT PK_product PRIMARY KEY,
    Product_name VARCHAR2(20) NOT NULL ,
    Price NUMBER
    
)
CREATE TABLE Orders (
    Quantity NUMBER ,
    Total_amount NUMBER ,
    CONSTRAINT FK_Costumer FOREIGN KEY (Costumer_ID) 
    REFERENCES Costumer(Costumer_ID),
    CONSTRAINT FK_Product FOREIGN KEY (Product_id) 
    REFERENCES Product(Product_id) 

)

ALTER TABLE Product ADD  Category VARCHAR2(20)

ALTER TABLE Orders ADD OrderDate DATE  DEFAULT SYSDATE
