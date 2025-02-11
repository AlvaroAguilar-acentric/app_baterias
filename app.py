import json
import pandas as pd
import tensorflow as tf
from bs4 import BeautifulSoup

def handler(event, context):
    # Ejemplo de uso de pandas
    df = pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6]})
    
    # Ejemplo de uso de TensorFlow
    model = tf.keras.Sequential([tf.keras.layers.Dense(units=1, input_shape=[1])])
    
    # Ejemplo de uso de Beautiful Soup
    html = "<html><body><p>Hola, mundo!</p></body></html>"
    soup = BeautifulSoup(html, "html.parser")
    text = soup.p.text
    
    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": "Funciona!",
            "dataframe": df.to_dict(),
            "text_extraido": text
        })
    }