#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
#include <math.h>
#include <stdio.h>

static int l_sin(lua_State *L) {
    double d = luaL_checknumber(L,1);
    lua_pushnumber(L,sin(d));
    return 1;
}
int main(int argc,char *argv[]) {
    lua_State *L =luaL_newstate();

    
    return 0;
}










