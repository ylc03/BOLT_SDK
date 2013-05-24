function OnLButtonDown(self)
	local tree = self:GetOwner()
end

function OnInitControl(self)

end

function OnCreate(self)
	local tree = self:GetBindUIObjectTree()
end

function OnSize(self)
	local tree = self:GetBindUIObjectTree()
end

function OnFocusChange(self, focus)
		local tree = self:GetBindUIObjectTree()
end

function OnSelectChange(self, func, text)
	XLPrint("OnSelectChange(self, func, text) "..text)

	local tree = self:GetOwner()
	local hostwnd = tree:GetBindHostWnd()
	local data = hostwnd:GetUserData()
	data.text = text
	data.closeByClick = true
	
	CloseWindow(tree)
end