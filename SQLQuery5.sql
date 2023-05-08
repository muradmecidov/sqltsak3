CREATE TABLE Pizzas(
Id INT Primary Key Identity,
[Name] VARCHAR(50),
Description VARCHAR(MAX),
Categorield INT FOREIGN KEY REFERENCES Categories (Id)
)
CREATE TABLE Prices(
Id INT Primary Key Identity,
Price INT ,
PizzaId INT FOREIGN KEY REFERENCES Pizzas (Id),
SizeId INT FOREIGN KEY REFERENCES Sizes (Id),
CurrencyId INT FOREIGN KEY REFERENCES Currencies (Id)
)
CREATE TABLE Sizes(
Id INT Primary Key Identity,
Size VARCHAR(20),
SizeValue INT 
)
CREATE TABLE Currencies(
Id INT Primary Key Identity,
[Name] VARCHAR (max)
)
CREATE TABLE PizzaInnergredinet(
Id INT Primary Key Identity,
PizzaId INT FOREIGN KEY REFERENCES Pizzas (Id),
InnergredinetId INT FOREIGN KEY REFERENCES Innergredinets (Id),
)

CREATE TABLE Innergredinets(
Id INT Primary Key Identity,
[Name] INT
)

CREATE TABLE Categories(
Id INT Primary Key Identity,
[Name] VARCHAR (50)
)
CREATE TABLE Images(
Id INT Primary Key Identity,
[Name] INT,
PizzaId INT FOREIGN KEY REFERENCES Pizzas (Id),
)
CREATE TABLE PizzaTypes(
Id INT Primary Key Identity,
PizzaId INT FOREIGN KEY REFERENCES Pizzas (Id),
TypeId INT FOREIGN KEY REFERENCES [Types] (Id),
)

CREATE TABLE [Types](
Id INT Primary Key Identity,
[Name] VARCHAR (30),
Icon VARCHAR (max)
)

