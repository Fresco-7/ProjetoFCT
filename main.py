##PARA CORRER O PROGRAMA python3 main.py
##PARA CORRER O PROGRAMA o execute main.py
from website import create_app
app = create_app()   

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=9999, debug=True)
