import logging
logging.basicConfig(filename='app.log', filemode='a',format='%(asctime)s %(message)s',level=logging.INFO, datefmt='%m/%d/%Y %I:%M:%S %p')
a=10
b=0
try:
    result = a/b
    print("errror")
except Exception as e:
    logging.error(f"DIVIDE BY ZERO {e}")
    

print("AFTER ERROR")
