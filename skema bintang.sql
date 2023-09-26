-- Tabel Dimensi Produk (Product_Dimension)
CREATE TABLE Product_Dimension (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(255),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Tabel Fakta (Sales_Fact)
CREATE TABLE Sales_Fact (
    Fact_ID INT PRIMARY KEY,
    Date_ID INT,  -- Ini adalah kunci asing ke Dimensi Tanggal
    Product_ID INT,  -- Ini adalah kunci asing ke Dimensi Produk
    Sales_Amount DECIMAL(10, 2)
);
