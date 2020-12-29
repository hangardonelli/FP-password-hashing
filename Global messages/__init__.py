from houdini.plugins import IPlugin
from houdini import commands
from houdini.data.penguin import Penguin
from houdini import permissions
from houdini.data.room import Room
from houdini.handlers.play.moderation import moderator_ban,moderator_kick
import difflib
import asyncio
from houdini.data.moderator import Ban


class Essentials(IPlugin):
    author = "Solero"
    description = "Essentials plugin"
    version = "1.0.0"

    def __init__(self, server):
        super().__init__(server)

        self.items_by_name = None

    
        await self.server.permissions.register('essentials.gm')
        self.items_by_name = {item.name: item for item in self.server.items.values()}

   

    @commands.command('gm')
    @permissions.has_or_moderator('essentials.gm')
    async def global_msg(self, p, *message: str):
        message = ' '.join([i for i in message])
        await p.room.send_xt('cerror', message, 'Freeze Penguin')

