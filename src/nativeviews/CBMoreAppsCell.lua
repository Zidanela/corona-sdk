--
-- Chartboost Corona SDK
-- Created by: Chris
--
-- This file is used to create rows for the more apps view.
-- Returns a table with a single method:
--   moreAppsCell.baseCell(rowHeight, onClick)
--   Supply a height and a method to listen for clicks and the method returns a row for use in tableview widgets
--

local COLOR_GRADIENT_TOP =  {.914,.914,.914}
local COLOR_GRADIENT_BOTTOM = {.863,.863,.863}

local function baseCell(rowHeight, onClick)
    assert(type(rowHeight) == "number", "First parameter 'rowHeight' must be a number.")
    assert(type(onClick) == "function", "Second parameter 'onClick' must be a function.")
    local function onRowTouch(event)
        local row = event.target

        if event.phase == "release" then
            if not row.isCategory then
                -- reRender property tells row to refresh if still onScreen when content moves
                row.reRender = true
                onClick()
            end
        end
        return true
    end

    local function onRowRender(event)
        local row = event.row
        local rowGroup = event.row

        -- gradient BG
        local bg = display.newRect(rowGroup, row.width*.5, row.height*.5, row.width, row.height)
        local gradient = {type='gradient',color1=COLOR_GRADIENT_TOP,color2=COLOR_GRADIENT_BOTTOM}
        bg:setFillColor(gradient)

        -- borders
        local borderTop = display.newRect(rowGroup, row.width*.5, 0, row.width, 1)
        borderTop:setFillColor(.957,.957,.957, .2)
        local borderBottom = display.newRect(rowGroup, row.width*.5, row.height - 2, row.width, 1)
        borderBottom:setFillColor(.8,.8,.8,1)
    end

    return {
        onTouch = onRowTouch,
        onRender = onRowRender,
        rowHeight = rowHeight,
        isCategory = false,
        lineColor = {0, 0, 0, 255}
    }
end

return {baseCell = baseCell}