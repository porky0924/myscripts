for i=2,4 do
    local btool = Instance.new("HopperBin")
    btool.BinType=i
    btool.Parent=game:service'Players'.LocalPlayer.Backpack
end

mouse = game:service'Players'.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Unlock tool"
tool.Activated:connect(function()
    if mouse.Target:IsA("BasePart") then
        mouse.Target.Locked=false
        print("Unlocked "..mouse.Target:GetFullName())
    end
end)
tool.Parent = game:service'Players'.LocalPlayer.Backpack