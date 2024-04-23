local active = false

function Open(title, message, color)
	if active then
		Close()
		Wait(500)
	end
	SendNUIMessage({action = 'open', title = title, message = message, color = color})
	active = true
end

function Close()
	SendNUIMessage({
		action = 'close'
	})
	active = false
end

RegisterNetEvent('mtxLongUI:Open')
AddEventHandler('mtxLongUI:Open', function(message, color)
	DisableControlAction(0, 44, true)
	Open(message, color)
end)

RegisterNetEvent('mtxLongUI:Close')
AddEventHandler('mtxLongUI:Close', function()
	Close()
end)

CreateThread(function()
	while true do
		if active then
			Wait(0)
			if IsControlJustPressed(0, Config.CloseKey) then
				Close()
			end
		else
			Wait(500)
		end
	end
end)

if Config.Debug or false then
	RegisterCommand('uitext', function()
		Open("Medical card", "First name: John<br>Last name: Doe<br>DOB: 1.1.1999<br>Injury: Punched", "red")
	end)

	RegisterCommand('uilist', function()
		Open("Medical card", "<ul><li>First name: John</li><li>Last name: Doe</li><li>DOB: 1.1.1999</li><li>Injury: Punched</li>", "green")
	end)

	RegisterCommand('uitable', function()
		Open("Medical card", [[<table>
		<tr>
			<th>First name</th>
			<th>Last name</th>
			<th>DOB</th>
			<th>Injury</th>
		</tr>
		<tr>
			<td>John</td>
			<td>Doe</td>
			<td>01/01/2000</td>
			<td>Broken leg</td>
		</tr>
		<tr>
			<td>Jane</td>
			<td>Doe</td>
			<td>01/01/2000</td>
			<td>Broken arm</td>
	</table>]], "blue")
	end)

	RegisterCommand('uiprogress', function()
		Open("Medical card", "Random progress: <progress value=\"32\" max=\"100\"> </progress>", "grey")
	end)
end