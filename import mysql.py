import mysql.connector

# Buat koneksi ke database MySQL
conn = mysql.connector.connect(user="root", password="abc",
                               host="localhost", database="KALBE")

# Cek Koneksi
if conn.is_connected():
    print('Tersambung')

# Buat kursor
cursor = conn.cursor()

# Buat query SQL untuk menginsert data
insert_query = "INSERT INTO inventory (item_code, item_name, item_price, item_total) VALUES ('2346', 'Fitbar', 10000, 25)"

# Eksekusi query dengan data yang telah disediakan
cursor.execute(insert_query)

# Commit perubahan ke database
conn.commit()

# Tutup kursor dan koneksi
cursor.close()
conn.close()