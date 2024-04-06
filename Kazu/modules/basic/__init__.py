import os
import sys
from pyrogram import Client



def restart():
    os.execvp(sys.executable, [sys.executable, "-m", "Kazu"])

async def join(client):
    try:
        await client.join_chat("musik_supportdan")
        await client.join_chat("logsmusicbot")
        await client.join_chat("Disney_storeDan")
        await client.join_chat("Userlogsbott")
    except BaseException:
        pass
