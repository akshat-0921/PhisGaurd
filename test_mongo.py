from pymongo import MongoClient
import certifi

uri = "mongodb+srv://sayonara967051:Akshat00@cluster0.ugoi5he.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"

client = MongoClient(
    uri,
    tls=True,
    tlsCAFile=certifi.where()
)

try:
    print(client.admin.command("ping"))
    print("Connected successfully")
except Exception as e:
    print("Connection failed:", e)
