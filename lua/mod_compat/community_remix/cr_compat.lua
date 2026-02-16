RestoredCollection:AddModCompat("communityRemix", function()
	communityRemix.TransformationItem[RestoredCollection.Enums.CollectibleType.COLLECTIBLE_MAXS_HEAD] =
		{ communityRemix.NullItemID.ID_MAX }
	communityRemix.TransformationItem[RestoredCollection.Enums.CollectibleType.COLLECTIBLE_TAMMYS_TAIL_TC] =
		{ communityRemix.NullItemID.ID_TAMMY }
end)

RestoredCollection:AddModCompat(function()
	return communityRemix and EID
end, function()
	EID:assignTransformation("collectible", RestoredCollection.Enums.CollectibleType.COLLECTIBLE_MAXS_HEAD, "Max")
	EID:assignTransformation(
		"collectible",
		RestoredCollection.Enums.CollectibleType.COLLECTIBLE_TAMMYS_TAIL_TC,
		"Tammy"
	)
end)
