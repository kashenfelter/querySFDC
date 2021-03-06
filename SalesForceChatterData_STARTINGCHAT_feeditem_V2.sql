/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
      
	  feedItm.[Id]
	  ,feedItm.[Title]
      ,feedItm.[Type]
	  ,feedItm.[ParentId]
	  ,feedItm.[Body]
      ,feedItm.[CommentCount]
      ,feedItm.[CreatedById]
      ,feedItm.[CreatedDate]
	  ,feedItm.[InsertedById]
	  ,feedItm.[LastEditById]
      ,feedItm.[LastEditDate]
      ,feedItm.[LastModifiedDate]
      ,feedItm.[LikeCount]
	  ,feedItm.[RelatedRecordId]
      ,feedItm.[Revision]
      ,feedItm.[SystemModstamp]


	/* NOT USED

		,[BestCommentId]
		,[HasContent]
		,[IsDeleted]
		,[LinkUrl]
		,[IsRichText]
		,[HasLink]



	*/

  FROM [SFDCReplicaDB].[dbo].[feeditem] AS feedItm
  where YEAR(feedItm.CreatedDate) > 2013 
	AND feedItm.CommentCount > 0
	AND feedItm.Type = 'TextPost'
	--AND	column1 LIKE '%word2%'
  	--ORDER BY ParentId, Id, CreatedDate