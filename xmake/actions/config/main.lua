--!The Automatic Cross-platform Build Tool
-- 
-- XMake is free software; you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation; either version 2.1 of the License, or
-- (at your option) any later version.
-- 
-- XMake is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.
-- 
-- You should have received a copy of the GNU Lesser General Public License
-- along with XMake; 
-- If not, see <a href="http://www.gnu.org/licenses/"> http://www.gnu.org/licenses/</a>
-- 
-- Copyright (C) 2015 - 2016, ruki All rights reserved.
--
-- @author      ruki
-- @file        main.lua
--

-- imports
import("core.base.option")
import("core.project.config")

-- main
function main()

    -- clean the cached configure?
    if option.get("clean") then
        
        -- clean it
        config.clean()
    end

    --[[
    -- merge the options 
    for name, value in pairs(option.options()) do
        if name ~= "verbose" and name ~= "clean" then
            config.set(name, value)
        end
    end

    -- merge the default options 
    for name, value in pairs(option.defaults()) do
        if name ~= "verbose" and name ~= "clean" then
            config.set(name, value)
        end
    end
    ]]

    -- probe the configure with value: "auto"
--    config.probe()

end