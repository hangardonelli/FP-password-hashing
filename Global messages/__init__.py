from houdini.plugins import IPlugin
from houdini import commands
from houdini.data.penguin import Penguin
from houdini import permissions
from houdini.data.room import Room
import difflib
import asyncio



class GlobalMsgs(IPlugin):
    author = "Lau"
    description = "Global message plugin for Freeze Penguin"
    version = "1.0.0"

    def __init__(self, server):
        super().__init__(server)

        self.items_by_name = None

    
        await self.server.permissions.register('gm')
        self.items_by_name = {item.name: item for item in self.server.items.values()}

   

    @commands.command('gm')
    @permissions.has_or_moderator('gm')
    async def global_msg(self, p, *message: str):
        message = ' '.join([i for i in message])
        await p.room.send_xt('cerror', message, 'Freeze Penguin')

