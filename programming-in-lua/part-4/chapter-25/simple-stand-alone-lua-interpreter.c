#include <stdio.h> 
#include <string.h>
#include <stdlib.h>

#include "lua5.2/lua.h"
#include "lua5.2/lauxlib.h"
#include "lua5.2/lualib.h"

void error(lua_State *L,const char *fmt, ... ){
    va_list argp;
    va_start(argp,fmt) ;
    vfprintf(stderr,fmt,argp);
    va_end(argp);
    lua_close(L);
    exit(EXIT_FAILURE);
} 

int main(){
    char buff[256];
    int error;
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    while(fgets(buff,sizeof(buff),stdin) !=NULL ) {
        error = luaL_loadstring(L,buff) || lua_pcall(L,0,0,0);
        if( error) {
            fprintf(stderr,"%s\n",lua_tostring(L,-1));
            lua_pop(L,-1);
        }
    }
    lua_close(L);

}
