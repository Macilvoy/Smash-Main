local FightingUI = script:GetCustomProperty("FightingUI"):WaitForObject()
local FightingUI2 = script:GetCustomProperty("FightingUI2"):WaitForObject()
local MovesListUI = script:GetCustomProperty("MovesListUI"):WaitForObject()
local FightingESCMenu = script:GetCustomProperty("FightingESCMenu"):WaitForObject()
--ESC_Menu--
local MainMenuButton = FightingESCMenu:GetCustomProperty("MainMenuButton"):WaitForObject()
local MovesButton = FightingESCMenu:GetCustomProperty("MovesButton"):WaitForObject()
local BackButton = FightingESCMenu:GetCustomProperty("BackButton"):WaitForObject()
---Moves---
local BackButton2 = MovesListUI:GetCustomProperty("BackButton"):WaitForObject()


local player=Game.GetLocalPlayer()

local UIID=0    -- Current UI window / 0- nothing/fightingUI / 1- Menu / 2- Moves

function UpdateWindows()
    if UIID==0 then
        FightingESCMenu.visibility=Visibility.INHERIT
        FightingUI.visibility=Visibility.FORCE_OFF
        FightingUI2.visibility=Visibility.FORCE_OFF
        UIID=1
        UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
    elseif UIID==1 then
        FightingESCMenu.visibility=Visibility.FORCE_OFF
        FightingUI.visibility=Visibility.INHERIT
        FightingUI2.visibility=Visibility.INHERIT
        UIID=0
        UI.SetCursorVisible(false)
        UI.SetCanCursorInteractWithUI(false)
    elseif UIID==2 then
        FightingESCMenu.visibility=Visibility.INHERIT
        MovesListUI.visibility=Visibility.FORCE_OFF
        UIID=1
    end
end

function OnEscape(pl, params)
    params.openPauseMenu = false
    UpdateWindows()
end

Input.escapeHook:Connect(OnEscape)

function MMClick()
    player:TransferToGame("80b2d0/super-smack-bros")
end
function MovesClick()
    FightingESCMenu.visibility=Visibility.FORCE_OFF
    MovesListUI.visibility=Visibility.INHERIT
    UIID=2
end
function BackClick()
    if UIID==2 then
        FightingESCMenu.visibility=Visibility.INHERIT
        MovesListUI.visibility=Visibility.FORCE_OFF
        UIID=1
    elseif UIID==1 then
        FightingESCMenu.visibility=Visibility.FORCE_OFF
        FightingUI.visibility=Visibility.INHERIT
        FightingUI2.visibility=Visibility.INHERIT
        UIID=0
    end
end


MainMenuButton.clickedEvent:Connect(MMClick)
MovesButton.clickedEvent:Connect(MovesClick)
BackButton.clickedEvent:Connect(BackClick)
BackButton2.clickedEvent:Connect(BackClick)