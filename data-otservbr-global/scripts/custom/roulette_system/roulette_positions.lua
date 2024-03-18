local function getRoulettePositions(option)
	if option == "1" then
		return {
			Position(1046, 595, 5),
			Position(1047, 595, 5),
			Position(1048, 595, 5),
			Position(1049, 595, 5),
			Position(1050, 595, 5), -- REWARD POSITION
			Position(1051, 595, 5),
			Position(1052, 595, 5),
			Position(1053, 595, 5),
			Position(1054, 595, 5),
		}
	elseif option == "2" then
		return {
			Position(1030, 595, 5),
			Position(1031, 595, 5),
			Position(1032, 595, 5),
			Position(1033, 595, 5),
			Position(1034, 595, 5), -- REWARD POSITION
			Position(1035, 595, 5),
			Position(1036, 595, 5),
			Position(1037, 595, 5),
			Position(1038, 595, 5),
		}
	elseif option == "3" then
		return {
			Position(1062, 595, 5),
			Position(1063, 595, 5),
			Position(1064, 595, 5),
			Position(1065, 595, 5),
			Position(1066, 595, 5), -- REWARD POSITION
			Position(1067, 595, 5),
			Position(1068, 595, 5),
			Position(1069, 595, 5),
			Position(1070, 595, 5),
		}
	elseif option == "4" then
		return {
			Position(1045, 594, 6),
			Position(1046, 594, 6),
			Position(1047, 594, 6),
			Position(1048, 594, 6),
			Position(1049, 594, 6), -- REWARD POSITION
			Position(1050, 594, 6),
			Position(1051, 594, 6),
			Position(1052, 594, 6),
			Position(1053, 594, 6),
		}
	elseif option == "5" then
		return {
			Position(1029, 594, 6),
			Position(1030, 594, 6),
			Position(1031, 594, 6),
			Position(1032, 594, 6),
			Position(1033, 594, 6), -- REWARD POSITION
			Position(1034, 594, 6),
			Position(1035, 594, 6),
			Position(1036, 594, 6),
			Position(1037, 594, 6),
		}
	elseif option == "6" then
		return {
			Position(1061, 594, 6),
			Position(1062, 594, 6),
			Position(1063, 594, 6),
			Position(1064, 594, 6),
			Position(1065, 594, 6), -- REWARD POSITION
			Position(1066, 594, 6),
			Position(1067, 594, 6),
			Position(1068, 594, 6),
			Position(1069, 594, 6),
		}
	end
end

return { getRoulettePositions = getRoulettePositions }
