-- Tabel Dimensi Tanggal (Date_Dimension)
CREATE TABLE Date_Dimension (
    Date_ID INT PRIMARY KEY,
    Date DATE,
    Day_of_Week VARCHAR(15),
    Month VARCHAR(15),
    Quarter VARCHAR(5),
    Year INT
);

-- Tabel Dimensi Produk (Product_Dimension)
CREATE TABLE Product_Dimension (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(255),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Weight DECIMAL(10, 2),
    Description TEXT
);

-- Tabel Dimensi Pelanggan (Customer_Dimension)
CREATE TABLE Customer_Dimension (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(255),
    Email VARCHAR(255),
    Phone_Number VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(50)
);

-- Tabel Dimensi Lokasi (Location_Dimension)
CREATE TABLE Location_Dimension (
    Location_ID INT PRIMARY KEY,
    Store_Name VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    Zip_Code VARCHAR(20)
);

-- Tabel Dimensi Promosi (Promotion_Dimension)
CREATE TABLE Promotion_Dimension (
    Promotion_ID INT PRIMARY KEY,
    Promotion_Name VARCHAR(255),
    Start_Date DATE,
    End_Date DATE,
    Discount_Percentage DECIMAL(5, 2),
    Description TEXT
);

-- Tabel Fakta (Sales_Fact)
CREATE TABLE Sales_Fact (
    Fact_ID INT PRIMARY KEY,
    Date_ID INT,
    Product_ID INT,
    Customer_ID INT,
    Location_ID INT,
    Promotion_ID INT,
    Sales_Amount DECIMAL(10, 2),
    
    FOREIGN KEY (Date_ID) REFERENCES Date_Dimension(Date_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product_Dimension(Product_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer_Dimension(Customer_ID),
    FOREIGN KEY (Location_ID) REFERENCES Location_Dimension(Location_ID),
    FOREIGN KEY (Promotion_ID) REFERENCES Promotion_Dimension(Promotion_ID)
);
