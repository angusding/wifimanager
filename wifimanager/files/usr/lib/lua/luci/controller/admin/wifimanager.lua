--[[
LuCI - Lua Configuration Interface
$Id: wifimanager.lua 2/17/2016 by Hostle 
]]--

module("luci.controller.admin.wifimanager", package.seeall)


function index()

	entry({"admin","wifimanager"}, alias("admin","wifimanager", "wifimanager"), _("Wifi Manger"), 66).index = true
	entry({"admin","wifimanager", "wifimanager"}, cbi("admin_wifimanager/networks"), _("Networks"), 10)
	entry({"admin","wifimanager", "config"}, cbi("admin_wifimanager/config"), _("Settings"), 11)
end

function action_start()
  wm.start_wifiMgr()
 return
end

function action_restart()
  wm.restart_wifiMgr()
 return
end

function action_clear()
  wm.clear_log()
 return
end

function action_stop()
  wm.stop_wifiMgr()
 return
end
