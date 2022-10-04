SELECT	w.Id [WarehousID],
	    w.Name [Warehouse],
        PV.Id [PVID],
		PV.Name [Product],
	    SUM(cws.Shelved + cws.MarkedForRecall) [AvailableStock]

FROM CurrentWarehouseStock cws
join ProductVariant pv on pv.Id = cws.ProductVariantId 
join Warehouse w on w.Id = cws.WarehouseId 

where ProductVariantId in (5882,5883,5884,5885,10188,10452,10457,10458,10460,10507,10508,10509,10510,10512,10513,10514,14077,14081,14099,14542,14543,14944)
and pv.DistributionNetworkId = 1

GROUP BY w.Id,
	     w.Name,
         PV.Id,
		 PV.Name,
		 cws.RequiredStock 


SELECT	w.Id [WarehousID],
	    w.Name [Warehouse],
        PV.Id [PVID],
		PV.Name [Product],
		cws.RequiredStock [RequiredStock]

FROM CurrentWarehouseStock cws
join ProductVariant pv on pv.Id = cws.ProductVariantId 
join Warehouse w on w.Id = cws.WarehouseId 

where ProductVariantId in (5882,5883,5884,5885,10188,10452,10457,10458,10460,10507,10508,10509,10510,10512,10513,10514,14077,14081,14099,14542,14543,14944)
and pv.DistributionNetworkId = 1

GROUP BY w.Id,
	     w.Name,
         PV.Id,
		 PV.Name,
		 cws.RequiredStock


		 select top 1* from currentWarehouseStock