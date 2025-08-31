# AI Voice Assistant in Python

## Overview of Problem Statement

The increasing use of voice-enabled systems highlights the importance of
natural interaction with computers. This project implements a simple
**AI Voice Assistant** in Python capable of performing tasks such as
searching information, opening websites, telling time, and controlling
the system (shutdown/restart).

## Objective

-   To create a voice-based AI assistant that can:
    -   Respond to greetings and user commands.
    -   Fetch results from Wikipedia.
    -   Open popular websites like Google and YouTube.
    -   Report current time.
    -   Perform system operations (shutdown/restart).
    -   Interact through text-to-speech.

## Dataset

-   No dataset is required.\
-   The assistant works by taking **real-time voice input** via a
    microphone (or fallback to manual text input).

## Methodology

1.  **Speech Recognition**
    -   Uses the `speech_recognition` library with Google Speech API for
        transcribing user voice.
2.  **Text-to-Speech (TTS)**
    -   Implements `pyttsx3` for AI assistant speech output.
3.  **Wikipedia Search**
    -   Integrates with `wikipedia` library to summarize information.
4.  **Web Browsing**
    -   Opens websites like Google and YouTube via `webbrowser`.
5.  **System Control**
    -   Executes shutdown/restart commands using `os.system()`.
6.  **Command Handling**
    -   Queries are mapped to actions through the `handleCommand()`
        function.

## Features

-   Voice-based and text-based interaction.\
-   Greets the user based on current time.\
-   Searches and speaks Wikipedia results.\
-   Opens Google and YouTube directly.\
-   Tells the current system time.\
-   Can shut down or restart the system.\
-   Friendly greetings ("hello", "hi").

## Results

-   The assistant successfully executes commands like:
    -   *"Search Sachin Tendulkar on Wikipedia"*\
    -   *"Open Google"*\
    -   *"What's the time?"*\
    -   *"Shutdown"*\
-   Provides **voice responses** and **system-level actions**.

## Limitations

-   Requires **internet connection** for speech recognition and
    Wikipedia.\
-   Limited to predefined commands.\
-   May misinterpret voice in noisy environments.\
-   Works best on Windows (shutdown/restart commands may differ on
    Linux/Mac).

## Conclusion

This Python-based Voice Assistant demonstrates how natural language and
speech interfaces can improve interaction with computers. It shows how
simple libraries can build a functional AI assistant for daily tasks.

## Future Work

-   Expand command set (open apps, send emails, play music).\
-   Use **advanced NLP models (BERT, GPT)** for better query
    understanding.\
-   Integrate with **IoT devices** for smart home control.\
-   Add **GUI/desktop app** for non-technical users.\
-   Improve accuracy with **noise cancellation and intent recognition**.
