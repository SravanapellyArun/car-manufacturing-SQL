
  drop table if exists v1
  SELECT * FROM [Projects].[dbo].[India_Car_Manufacture]

  
                                                    --*****AGGREGATE FUNCTIONS*****--

  --Count()
    SELECT count(distinct First_vechile) as Vechiles FROM [Projects].[dbo].[India_Car_Manufacture]

  --Order by
    SELECT top (1)  Company_Name,duration_of_company_in_India as longest_duration FROM [Projects].[dbo].[India_Car_Manufacture] order by duration_of_company_in_India desc

  --Group by 
    SELECT   Company_Name,sum(Production_of_company) as Total_Production FROM [Projects].[dbo].[India_Car_Manufacture] group by Company_Name 
    SELECT   Company_Name,sum(Export_sales) as Total_sales FROM [Projects].[dbo].[India_Car_Manufacture] group by Company_Name 
  
  --Sum()
    SELECT sum(Annual_Sales) as total_sales FROM [Projects].[dbo].[India_Car_Manufacture]
    SELECT Manufacturing_Location,sum(Production_of_company) as Sum_Production_loc FROM [Projects].[dbo].[India_Car_Manufacture] group by Manufacturing_Location

  --Min()
    SELECT min(duration_of_company_in_India) as less_Duration FROM [Projects].[dbo].[India_Car_Manufacture]
    SELECT Manufacturing_Location,min(Production_of_company) as Min_production_loc FROM [Projects].[dbo].[India_Car_Manufacture] group by Manufacturing_Location

  --Max()
    SELECT max(duration_of_company_in_India) as More_Duration FROM [Projects].[dbo].[India_Car_Manufacture]
    SELECT Manufacturing_Location,max(Production_of_company) as Max_production_loc FROM [Projects].[dbo].[India_Car_Manufacture] group by Manufacturing_Location

  --Average()
    SELECT Avg(Annual_Sales) as Average_sales FROM [Projects].[dbo].[India_Car_Manufacture]

  --Where Clause
    SELECT count(distinct Company_Name) as above_2Lakh FROM [Projects].[dbo].[India_Car_Manufacture] where Annual_Sales >= 20000


    --******Temp Tables******--

   SELECT * into v1 FROM [Projects].[dbo].[India_Car_Manufacture]
   select * from v1


    --*****CRUD FUNTIONS*****--

  --Create a table
  --Create table Table_name (Col1 data_type sizee,Col2 data_type sizee,Col3 data_type sizee,Col4 data_type sizee)

  --INSERT
  --INSERT INTO TABLE Table_name values(value1,value2,value3,value4)
  
  --Update()
  Update v1 set which_year_exit_from_india = 'Still Runnig' where which_year_exit_from_india = 'NOT RUNNING'

  --Read(after updated)
  SELECT * FROM v1

  --Delete
  Delete from v1 where Annual_Sales <= 10000
  SELECT * FROM v1

  --Alter
  Alter table v1 add  new_coloum varchar(20)
  SELECT * FROM v1

  --INSERT
  Insert into v1(new_coloum) values ('Pass')
  SELECT * FROM v1