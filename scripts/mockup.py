from PIL import Image
import win32com.client
import os

name = "Project4" # input("Ведите название проекта: ")

for file in os.listdir("D:\.cardex\card" + chr(92) + name + chr(92)):
    if "(1).jpg" in file:
        front_link  = "D:\.cardex\card"+ chr(92) + name + chr(92) + file
    elif "(2).jpg" in file:
        back_link   = "D:\.cardex\card"+ chr(92) + name + chr(92) + file
    else:
        pass
mockup_link = "D:\.cardex\card"+ chr(92) + name + chr(92) + name +     " Mockup.jpg"

# Running Photoshop
ps = win32com.client.Dispatch("Photoshop.Application")

# Resize 'front' Image
front = Image.open(front_link)
front = front.resize((1504,1075))
front.save(front_link)
front.close()

# Resize 'back' Image
back = Image.open(back_link)
back = back.resize((1327,948))
back.save(back_link)
back.close()

# Open Mockup PSD
doc = ps.Open(r"D:\.cardex\mockup\card_mockup.psd")

# Open 'Front' Smart Object File PSD
front = ps.Open(r"D:\.cardex\mockup\front.psd")
front_layer = front.ArtLayers.Item(1)
front_layer.Delete() # Delete Layer

# Open 'Back' Smart Object File PSD
back = ps.Open(r"D:\.cardex\mockup\back.psd")
back_layer = back.ArtLayers.Item(1)
back_layer.Delete() 

# Copy 'Front' Image
front_jpg = ps.Open(front_link)
front_jpg_layer = front_jpg.ArtLayers.Item(1)
front_jpg_layer.Copy()
front_jpg.Close()

# Paste 'Front' Image
ps.ActiveDocument = front
front.Paste()
front.Save()
front.Close() 

# Copy 'Back' Image
back_jpg = ps.Open(back_link)
back_jpg_layer = back_jpg.ArtLayers.Item(1)
back_jpg_layer.Copy()
back_jpg.Close()

# Paste 'Back' Image
ps.ActiveDocument = back
back.Paste()
back.Save()
back.Close()

# Export PSD Mockup to JPG
ps.ActiveDocument = doc
jpgSaveOptions = win32com.client.Dispatch( "Photoshop.JPEGSaveOptions" )
doc.SaveAs(mockup_link, jpgSaveOptions, True, 2)

# Close to Mockup
doc.Save()
doc.Close()

# Stops the Photoshop application
# ps.Quit()
