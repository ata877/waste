USE [TreaterLog_Test]
GO

SELECT 
--	  ph.[logID],
--      ph.[ShopOrderID],
      ph.[ShopOrderNo],
      ph.[ColourName],
      ph.[Item],
      ph.[SheetSize],
--      ph.[SheetLength],
--      ph.[SheetWidth],
      ph.[MinOfEventStart] as 'Start',
      ph.[MaxOfEventEnd] as 'Stop',
 --     ph.[MaxOfQuantity_Ordered],
--      ph.[SumOfQuantity_Supplied],
--      ph.[WetTreatedWeight2],
--      ph.[RowNum],
--      ph.[Complete],
--      ph.[LabelPrintingComplete],
      ph.[SumOfSheets] as 'Pallet Sheets',
	  so.qty,
	  tb.BCHLD as 'Wet End Resin Item'
  FROM [dbo].[vPalletLabelHistory] ph
  inner join vshoporderitems so on so.ShopOrderNo=ph.shoporderno and so.description = 'UF701307 Wet End UF'
  inner join vtreaterbom tb on ph.item=tb.BPROD and tb.BSEQ=2
  where ph.shoporderno =819465
GO


