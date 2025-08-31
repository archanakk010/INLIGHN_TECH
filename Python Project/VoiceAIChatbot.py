import speech_recognition as sr
import pyttsx3
import datetime
import webbrowser
import wikipedia
import os

def speak(text):
    engine = pyttsx3.init()
    engine.say(text)
    engine.runAndWait()

def wishMe():
    hour = datetime.datetime.now().hour
    if 0 <= hour < 12:
        speak("Good Morning!")
    elif 12 <= hour < 18:
        speak("Good Afternoon!")
    else:
        speak("Good Evening!")
    speak("I am your AI assistant. How may I help you today?")

def takeCommand():
    recognizer = sr.Recognizer()
    with sr.Microphone() as source:
        print("Listening...")
        recognizer.pause_threshold = 1
        audio = recognizer.listen(source)

    try:
        print("Recognizing...")
        query = recognizer.recognize_google(audio, language='en-in')
        print(f"User said: {query}")
    except:
        print("Could not understand your voice.")
        return "None"
    return query.lower()

def handleCommand(query):
    if 'wikipedia' in query:
        speak("Searching Wikipedia...")
        query = query.replace("wikipedia", "")
        results = wikipedia.summary(query, sentences=2)
        speak("According to Wikipedia")
        speak(results)
    elif 'open google' in query:
        webbrowser.open("https://www.google.com")
    elif 'open youtube' in query:
        webbrowser.open("https://www.youtube.com")
    elif 'time' in query:
        time_str = datetime.datetime.now().strftime("%H:%M:%S")
        speak(f"The time is {time_str}")
    elif 'shutdown' in query:
        speak("Shutting down your system.")
        os.system("shutdown /s /t 1")
    elif 'restart' in query:
        speak("Restarting your system.")
        os.system("shutdown /r /t 1")
    elif 'hello' in query or 'hi' in query:
        speak("Hello! How can I assist you?")
    elif 'exit' in query or 'stop' in query:

        speak("Goodbye!")
        exit()
    else:
        speak("Sorry, I didn't understand that.")


def takeCommand():
    return input("Type your command here: ").lower()


if __name__ == "__main__":
    wishMe()
    while True:
        query = takeCommand()
        if query != "None":
            handleCommand(query)
