from fastapi import FastAPI, File, UploadFile

app = FastAPI()

@app.get("/")
def read_root():
    return {
        "name": "Igor Coutinhao", 
        "email": "coutinho@gmail.com",
        "phone": "999999999",
    }

@app.post("/")
def check_people(file: UploadFile):
    return {"filename": file.filename}