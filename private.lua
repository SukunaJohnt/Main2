function removeNumbersFromString(str)
   local result = ""
   for i = 1, #str do
       local char = str:sub(i, i)
       if not tonumber(char) then
           result = result .. char
       end
   end
   return result
end
 
spawn(function()
   pcall(function()
 if getgenv().DestroyEffect == true then 
   workspace.Effects:Destroy()
 end 
end)
end)

spawn(function()
 while wait(.1) do 
    pcall(function()
 for i,v2 in pairs(workspace.Lives:GetChildren()) do  
    if v2:IsA("Model") and v2:FindFirstChild("HumanoidRootPart")  then 
-- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v2:GetFullName()
local stringWithNumbers = v2.Name
local stringWithoutNumbers = removeNumbersFromString(stringWithNumbers)
v2.Name = stringWithoutNumbers
    end 
   end 
end) 
end
end)

spawn(function()
   while wait(.1) do 
      if AutoClaimChest == true then 
         pcall(function()
for i,v in pairs(workspace.Chests:GetChildren()) do 
   if v:IsA("Model") and v:FindFirstChild("Handle") then 
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetModelCFrame()
     fireproximityprompt(v.Handle.ProximityPrompt)
   end
  end 
end)
else
   wait()
   break
end
end
end)


spawn(function()
   while wait(.1) do 
      if AutoSkills == true then 
         pcall(function()
for i,v in pairs(key) do 
game:GetService("VirtualInputManager"):SendKeyEvent(true,v,false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,v,false,game)
wait(.1)
end 
end)
else
   wait()
   break
end 
end
end)


spawn(function()
 while task.wait(.1) do 
    if AutoEquip == true then 
       pcall(function()
         if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then 
   game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(weapon))
         end 
   end)
else
   wait()
   break
end 
end
end)


getgenv().Start =  true 
 while task.wait(.1) do 
    if Start == true then 
       pcall(function()
for i,v in pairs(workspace.Lives:GetChildren()) do  
   for i,v3 in pairs(boss) do 
   if v:IsA("Model") and v.Name == v3 and  v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then 
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,4)
 game:GetService'VirtualUser':CaptureController()
 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))


   end 
end 
end
end)
else
   wait()
   break
end 
end
