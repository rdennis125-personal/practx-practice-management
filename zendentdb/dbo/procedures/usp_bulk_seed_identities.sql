CREATE PROCEDURE [dbo].[usp_bulk_seed_identities]
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

        -- === DBCC statements go here to reseed on initialization===
        IF IDENT_CURRENT('dbo.autocodeitem') < 6
            DBCC CHECKIDENT ('dbo.autocodeitem', RESEED, 28);

        IF IDENT_CURRENT('dbo.orders') < 1000
            DBCC CHECKIDENT ('dbo.orders', RESEED, 1000);

        IF IDENT_CURRENT('sales.invoices') < 500
            DBCC CHECKIDENT ('sales.invoices', RESEED, 500);
DBCC CHECKIDENT ('inseditlog', RESEED, 5);
DBCC CHECKIDENT ('fee', RESEED, 35);
DBCC CHECKIDENT ('insplan', RESEED, 5);
DBCC CHECKIDENT ('tablename', RESEED, 1061);
DBCC CHECKIDENT ('quickpastecat', RESEED, 5);
DBCC CHECKIDENT ('quickpastenote', RESEED, 33);
DBCC CHECKIDENT ('recalltype', RESEED, 7);
DBCC CHECKIDENT ('referral', RESEED, 2);
DBCC CHECKIDENT ('sigelementdef', RESEED, 26);
DBCC CHECKIDENT ('stateabbr', RESEED, 52);
DBCC CHECKIDENT ('userquery', RESEED, 49);
DBCC CHECKIDENT ('toolbutitem', RESEED, 106);
DBCC CHECKIDENT ('zipcode', RESEED, 6);
DBCC CHECKIDENT ('ehrmeasure', RESEED, 37);
DBCC CHECKIDENT ('insbluebookrule', RESEED, 7);
DBCC CHECKIDENT ('employer', RESEED, 3);
DBCC CHECKIDENT ('laboratory', RESEED, 2);
DBCC CHECKIDENT ('orthocharttab', RESEED, 2);
DBCC CHECKIDENT ('orthohardwarespec', RESEED, 4);
DBCC CHECKIDENT ('patfielddef', RESEED, 4);
DBCC CHECKIDENT ('procbutton', RESEED, 16);
DBCC CHECKIDENT ('procbuttonitem', RESEED, 42);
DBCC CHECKIDENT ('procbuttonquick', RESEED, 25);
DBCC CHECKIDENT ('program', RESEED, 136);
DBCC CHECKIDENT ('alertcategory', RESEED, 6);
DBCC CHECKIDENT ('alertcategorylink', RESEED, 63);
DBCC CHECKIDENT ('appointmenttype', RESEED, 2);
DBCC CHECKIDENT ('autocode', RESEED, 8);
DBCC CHECKIDENT ('autocodecond', RESEED, 38);
DBCC CHECKIDENT ('autonotecontrol', RESEED, 28);
DBCC CHECKIDENT ('canadiannetwork', RESEED, 17);
DBCC CHECKIDENT ('chartview', RESEED, 2);
DBCC CHECKIDENT ('claimform', RESEED, 10);
DBCC CHECKIDENT ('claimformitem', RESEED, 1975);
DBCC CHECKIDENT ('codegroup', RESEED, 14);
DBCC CHECKIDENT ('covcat', RESEED, 16);
DBCC CHECKIDENT ('databasemaintenance', RESEED, 12);
DBCC CHECKIDENT ('definition', RESEED, 331);
DBCC CHECKIDENT ('displayreport', RESEED, 60);
DBCC CHECKIDENT ('electid', RESEED, 719);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;

        -- Log error or raise it
        DECLARE @errMsg NVARCHAR(4000), @errSeverity INT, @errState INT;
        SELECT 
            @errMsg = ERROR_MESSAGE(), 
            @errSeverity = ERROR_SEVERITY(), 
            @errState = ERROR_STATE();

        RAISERROR (@errMsg, @errSeverity, @errState);
    END CATCH
END