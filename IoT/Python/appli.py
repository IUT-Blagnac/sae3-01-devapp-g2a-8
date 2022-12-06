import paho.mqtt.client as mqtt
import json, os, signal

#ce qui est exécuté lors de la reception de l'alarme
def handler(num, frame):
    global Jmsg
    global old
    if Jmsg != old:
        for type in config['data']: #pour chaque type de données demandé
            file=os.open(type+".txt", os.O_WRONLY | os.O_CREAT | os.O_APPEND) #on ouvre le fichier
            os.write(file, (str(Jmsg["object"][type])+" ").encode('UTF-8')) #on écrit la donnée, séparées par des espaces
            os.close(file) #on ferme le fichier
        old = Jmsg

#on redéfinit le comportement du programme quand il reçoit un signal d'alarme
signal.signal(signal.SIGALRM, handler)

#lecture du fichier de configuration
fd=os.open('config.json', os.O_RDONLY)
buffer=os.read(fd,256)
texte=""
while len(buffer)>0: #tant qu'il y a du contenu on le récupère
    texte+=buffer.decode('UTF-8')
    buffer=os.read(fd,256)
os.close(fd)
print(texte)
config=json.loads(texte) #on formate en json

topic="application/{}/device/{}/event/up"

#connexion au bus mqtt
def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))
    client.subscribe(topic.format(config['appID'],config['deviceID'])) #connexion avec les données du fichier config

#si un message est reçu
def on_message(client, userdata, msg):
    global Jmsg
    Jmsg=json.loads(msg.payload) #on récupère le message
    signal.alarm(config["refresh"]*60) #on envoie un signal d'alarme
    
old = None
client = mqtt.Client()
client.on_message = on_message
client.on_connect = on_connect

client.connect(config['server'], 1883, 60)

client.loop_forever()