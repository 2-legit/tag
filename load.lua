local a=game:GetService("Players")local b=a.LocalPlayer;local c=game:GetService("ReplicatedStorage")local d=getconnections or get_signal_cons;local e=string.gsub;local f=string.byte;local g=string.reverse;local h=string.upper;local i=table.find;local j=table.unpack;local k=debug and debug.getupvalues;local l=Color3.new;local m=Color3.fromHex;local n=nil;pcall(function()n=loadstring(game:HttpGet("https://raw.githubusercontent.com/vodxn/tag/main/list.lua"))()end)local o=function(p)p=tostring(p)p=e(e(p,".",function(q)return f(q)end),".",function(r)return f(r)end)return"_"..g(p)end;if n~=nil and d and getmetatable and k then for r,q in pairs(d(c.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent))do if q.Function and#k(q.Function)>0 and type(k(q.Function)[1])=="table"and getmetatable(k(q.Function)[1])and getmetatable(k(q.Function)[1]).GetChannel then local s=getmetatable(k(q.Function)[1]).GetChannel;getmetatable(k(q.Function)[1]).GetChannel=function(t,u)local v=s(t,u)if v and v.AddMessageToChannel then local w=v.AddMessageToChannel;v.AddMessageToChannel=function(x,y)if y.FromSpeaker and a:FindFirstChild(tostring(y.FromSpeaker))then local z=a:FindFirstChild(tostring(y.FromSpeaker))for r,q in pairs(n)do if type(q[1])=="table"then if i(q[1],o(z.UserId))then y.ExtraData={NameColor=z.Team==nil and l(0,1,1)or z.TeamColor.Color,Tags={j(y.ExtraData.Tags),{TagColor=q[2][2]~=nil and m("#"..q[2][2])or m("#FFFFFF"),TagText=h(q[2][1])}}}end else if q[1]==o(z.UserId)then y.ExtraData={NameColor=z.Team==nil and l(0,1,1)or z.TeamColor.Color,Tags={j(y.ExtraData.Tags),{TagColor=q[2][2]~=nil and m("#"..q[2][2])or m("#FFFFFF"),TagText=h(q[2][1])}}}end end end end;return w(x,y)end end;return v end end end end
