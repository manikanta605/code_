import cv2
import glob
import face_recognition
import numpy as np
from datetime import datetime
from datetime import date
import mysql.connector
import os

today = date.today()
now = datetime.now()
dtString = now.strftime("%m-%d-%Y %H:%M%p")
path = 'Training_images'
images = []
names = []
myList = os.listdir(path)
print(myList)
for cl in myList:
    curImg = cv2.imread(f'{path}/{cl}')
    images.append(curImg)
    names.append(os.path.splitext(cl)[0])
print(names)




"""FONT=cv2.FONT_HERSHEY_COMPLEX
images=[]
names=[]
today = date.today()
now = datetime.now()
dtString = now.strftime("%m-%d-%Y %H:%M%p")
path = 'F:\2022\project_2\face-reco-attendance-part2-main\Training_images'
for file in glob.glob(path):
    image = cv2.imread(file)
    a=os.path.basename(file)
    b=os.path.splitext(a)[0]
    names.append(b)
    images.append(image)"""

      

def encoding1(images):
    encode=[]

    for img in images:
        unk_encoding = face_recognition.face_encodings(img)[0]
        encode.append(unk_encoding)
    return encode    

encodelist=encoding1(images)
def mysqladddata(names):
       mydb = mysql.connector.connect(
       host= "localhost",
       user="root",
       password="",
       database="Attendanceyt"

)

       a = mydb.cursor()
       get_sql = ("SELECT * FROM attendance where USERNAME=%s and Date=%s")
       data1 = (names,today)
       a.execute(get_sql,data1)
       b=a.fetchone()
       print(b)
       if b == None:
            print("Please insert Here")
            sql = ("INSERT IGNORE  INTO attendance(Date,USERNAME,DATETIME) VALUE(%s,%s,%s)")
            data=(today,names,dtString)
            a.execute(sql,data)
            mydb.commit()
            mydb.close()
       else:
            print('already have record in the db')
       

    #    mydb.commit()
    #    mydb.close()
       
cap =cv2.VideoCapture(0)       
while True:
      ret,frame=cap.read()
      frame1=cv2.resize(frame,(0,0),None,0.25,0.25)
      face_locations = face_recognition.face_locations(frame1)
      curframe_encoding = face_recognition.face_encodings(frame1,face_locations)
      for encodeface,facelocation in zip(curframe_encoding,face_locations):
         results = face_recognition.compare_faces(encodelist, encodeface)
         distance= face_recognition.face_distance(encodelist, encodeface)
         match_index=np.argmin(distance)
         name=names[match_index]
         mysqladddata(name)
         x1,y1,x2,y2=facelocation
         x1,y1,x2,y2=x1*4,y1*4,x2*4,y2*4
         cv2.rectangle(frame,(y1,x1),(y2,x2),(0,0,255),3)
         cv2.putText(frame,name,(y2+6,x2-6),cv2.FONT_HERSHEY_COMPLEX,1,(255,0,255),2)
        
        
         
      cv2.imshow("FRAME",frame)
      if cv2.waitKey(1)&0xFF=='q':
          break
cap.release()
cv2.destroyAllWindows()