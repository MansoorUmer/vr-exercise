import tensorflow as tf

def predict(image_path):
  # Load the model
  model = tf.keras.models.load_model('saved_model.h5')

  # Preprocess the image (replace with your preprocessing logic)
  # Example using OpenCV:
  import cv2
  img = cv2.imread(image_path)
  img = cv2.resize(img, (224, 224))
  img = img / 255.0
  img = np.expand_dims(img, axis=0)

  # Make predictions
  predictions = model.predict(img)
  return predictions

# Example usage:
image_path = 'path/to/your/image.jpg'
result = predict(image_path)
print(result)
