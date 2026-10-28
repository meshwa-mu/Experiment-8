EXPERIMENT 8 - Inventory Management Module (ADO.NET + CRUD)
.NET Technologies (01CE1523), Visual Studio 2022, ASP.NET MVC 5 (.NET Framework 4.8)

HOW TO USE
1. In VS 2022: Create a new project -> "ASP.NET Web Application (.NET Framework)" (C#)
   Name it exactly: InventryDB   | Framework 4.8 | Template: MVC
2. Create the database: open Database/InventryDB.sql in VS
   (SQL Server Object Explorer -> (localdb)\MSSQLLocalDB -> right-click -> New Query)
   and run it.
3. Copy the files into the project (Solution Explorer -> Add -> Existing Item, or
   drag-drop):
      Models/Product.cs                  -> InventryDB/Models/
      Controllers/ProductController.cs   -> InventryDB/Controllers/
      Views/Product/*.cshtml             -> InventryDB/Views/Product/
4. Open App_Start/RouteConfig.cs and set the default route to:
      defaults: new { controller = "Product", action = "Index", id = UrlParameter.Optional }
5. Press F5. The Product Inventory table opens; test Add / Edit / Delete.

TROUBLESHOOTING
- "Cannot open database InventryDB": check the server name (localdb)\MSSQLLocalDB.
- "InventryDB namespace not found": project name must be InventryDB.
- Model.Any() not recognised: add @using System.Linq at the top of Index.cshtml.
