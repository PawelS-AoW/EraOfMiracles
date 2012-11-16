-- SocialPolicyPopup
-- Author: rocklikeafool
-- DateCreated: 11/15/2012 8:49:04 PM
--------------------------------------------------------------


-------------------------------------------------
-- SocialPolicy Chooser Popup
-------------------------------------------------

include( "IconSupport" );
include( "InstanceManager" );

local m_PopupInfo = nil;

-- Will uncomment more policy lines, as more policy trees are completed.
local g_CivilizationPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.CivilizationPanel );
-- local g_NaturePipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.NaturePanel );
-- local g_CraftmanshipPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.CraftmanshipPanel );
-- local g_SeamanshipPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.SeamanshipPanel );
-- local g_WealthPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.WealthPanel );
-- local g_WisdomPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.WisdomPanel );
local g_FreedomPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.FreedomPanel );
local g_DominationPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.DominationPanel );
-- local g_OrderPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.OrderPanel );
-- local g_ChaosPipeManager = InstanceManager:new( "ConnectorPipe", "ConnectorImage", Controls.ChaosPanel );

local g_CivilizationInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.CivilizationPanel );
-- local g_NatureInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.NaturePanel );
-- local g_CraftmanshipInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.CraftmanshipPanel );
-- local g_SeamanshipInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.SeamanshipPanel );
-- local g_WealthInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.WealthPanel );
-- local g_WisdomInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.WisdomPanel );
local g_FreedomInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.FreedomPanel );
local g_DominationInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.DominationPanel );
-- local g_OrderInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.OrderPanel );
-- local g_ChaosInstanceManager = InstanceManager:new( "PolicyButton", "PolicyIcon", Controls.ChaosPanel );


include( "FLuaVector" );

local fullColor = {x = 1, y = 1, z = 1, w = 1};
local fadeColor = {x = 1, y = 1, z = 1, w = 0};
local fadeColorRV = {x = 1, y = 1, z = 1, w = 0.2};
local pinkColor = {x = 2, y = 0, z = 2, w = 1};
local lockTexture = "48Lock.dds";
local checkTexture = "48Checked.dds";

local hTexture = "Connect_H.dds";
local vTexture = "Connect_V.dds";

local topRightTexture =		"Connect_JonCurve_TopRight.dds"
local topLeftTexture =		"Connect_JonCurve_TopLeft.dds"
local bottomRightTexture =	"Connect_JonCurve_BottomRight.dds"
local bottomLeftTexture =	"Connect_JonCurve_BottomLeft.dds"

local policyIcons = {};

local g_PolicyXOffset = 28;
local g_PolicyYOffset = 68;

local g_PolicyPipeXOffset = 28;
local g_PolicyPipeYOffset = 68;

local m_gPolicyID;
local m_gAdoptingPolicy;

local numBranchesRequiredForUtopia = GameInfo.Projects["PROJECT_UTOPIA_PROJECT"].CultureBranchesRequired;

-------------------------------------------------
-- On Policy Selected
-------------------------------------------------
function PolicySelected( policyIndex )
    
    print("Clicked on Policy: " .. tostring(policyIndex));
    
	if policyIndex == -1 then
		return;
	end
    local player = Players[Game.GetActivePlayer()];   
    if player == nil then
		return;
    end
    
    local bHasPolicy = player:HasPolicy(policyIndex);
    local bCanAdoptPolicy = player:CanAdoptPolicy(policyIndex);
    
    print("bHasPolicy: " .. tostring(bHasPolicy));
    print("bCanAdoptPolicy: " .. tostring(bCanAdoptPolicy));
    print("Policy Blocked: " .. tostring(player:IsPolicyBlocked(policyIndex)));
    
    local bPolicyBlocked = false;
    
    -- If we can get this, OR we already have it, see if we can unblock it first
    if (bHasPolicy or bCanAdoptPolicy) then
    
		-- Policy blocked off right now? If so, try to activate
		if (player:IsPolicyBlocked(policyIndex)) then
			
			bPolicyBlocked = true;
			
			local strPolicyBranch = GameInfo.Policies[policyIndex].PolicyBranchType;
			local iPolicyBranch = GameInfoTypes[strPolicyBranch];
			
			print("Policy Branch: " .. tostring(iPolicyBranch));
			
			local popupInfo = {
				Type = ButtonPopupTypes.BUTTONPOPUP_CONFIRM_POLICY_BRANCH_SWITCH,
				Data1 = iPolicyBranch;
			}
			Events.SerialEventGameMessagePopup(popupInfo);
			
		end
    end
    
    -- Can adopt Policy right now - don't try this if we're going to unblock the Policy instead
    if (bCanAdoptPolicy and not bPolicyBlocked) then
		m_gPolicyID = policyIndex;
		m_gAdoptingPolicy = true;
		Controls.PolicyConfirm:SetHide(false);
		Controls.BGBlock:SetHide(true);
		--Network.SendUpdatePolicies(policyIndex, true, true);
		--Events.AudioPlay2DSound("AS2D_INTERFACE_POLICY");		
	end
	
end

-------------------------------------------------
-- On Policy Branch Selected
-------------------------------------------------
function PolicyBranchSelected( policyBranchIndex )
    
    --print("Clicked on PolicyBranch: " .. tostring(policyBranchIndex));
    
	if policyBranchIndex == -1 then
		return;
	end
    local player = Players[Game.GetActivePlayer()];   
    if player == nil then
		return;
    end
    
    local bHasPolicyBranch = player:IsPolicyBranchUnlocked(policyBranchIndex);
    local bCanAdoptPolicyBranch = player:CanUnlockPolicyBranch(policyBranchIndex);
    
    --print("bHasPolicyBranch: " .. tostring(bHasPolicyBranch));
    --print("bCanAdoptPolicyBranch: " .. tostring(bCanAdoptPolicyBranch));
   -- print("PolicyBranch Blocked: " .. tostring(player:IsPolicyBranchBlocked(policyBranchIndex)));
    
    local bUnblockingPolicyBranch = false;
    
    -- If we can get this, OR we already have it, see if we can unblock it first
    if (bHasPolicyBranch or bCanAdoptPolicyBranch) then
    
		-- Policy Branch blocked off right now? If so, try to activate
		if (player:IsPolicyBranchBlocked(policyBranchIndex)) then
			
			bUnblockingPolicyBranch = true;
			
			local popupInfo = {
				Type = ButtonPopupTypes.BUTTONPOPUP_CONFIRM_POLICY_BRANCH_SWITCH,
				Data1 = policyBranchIndex;
			}
			Events.SerialEventGameMessagePopup(popupInfo);
		end
    end
    
    -- Can adopt Policy Branch right now - don't try this if we're going to unblock the Policy Branch instead
    if (bCanAdoptPolicyBranch and not bUnblockingPolicyBranch) then
		m_gPolicyID = policyBranchIndex;
		m_gAdoptingPolicy = false;
		Controls.PolicyConfirm:SetHide(false);
		Controls.BGBlock:SetHide(true);
	end
	
	---- Are we allowed to unlock this Branch right now?
	--if player:CanUnlockPolicyBranch( policyBranchIndex ) then
		--
		---- Can't adopt the Policy Branch - can we switch active branches though?
		--if (player:IsPolicyBranchBlocked(policyBranchIndex)) then
		--
			--local popupInfo = {
				--Type = ButtonPopupTypes.BUTTONPOPUP_CONFIRM_POLICY_BRANCH_SWITCH,
				--Data1 = policyBranchIndex;
			--}
			--Events.SerialEventGameMessagePopup(popupInfo);
	    --
		---- Can adopt this Policy Branch right now
		--else
			--Network.SendUpdatePolicies(policyBranchIndex, false, true);
