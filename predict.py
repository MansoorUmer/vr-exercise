import sys
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing import image
import numpy as np

# Load your model
model = load_model('saved_model.h5')

def predict_image(image_path):
    img = image.load_img(image_path, target_size=(224, 224))
    img_array = image.img_to_array(img) / 255.0
    img_array = np.expand_dims(img_array, axis=0)
    predictions = model.predict(img_array)
    predicted_class = np.argmax(predictions[0])
    return f'class{predicted_class}'

if __name__ == "__main__":
    image_path = sys.argv[1]
    result = predict_image(image_path)
    print(result)
