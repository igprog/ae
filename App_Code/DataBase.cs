using System;
using System.Web;
using System.Configuration;
using System.IO;
using System.Data.SQLite;
using Igprog;

/// <summary>
/// DataBase
/// </summary>
public class DataBase {
    Global G = new Global();
    public DataBase() {
    }

    public void Booking(string path) {
        string sql = @"CREATE TABLE IF NOT EXISTS booking
                (id VARCHAR(50) PRIMARY KEY,
                firstName VARCHAR(50),
                lastName VARCHAR(50),
                email NVARCHAR(50),
                apartment NVARCHAR(50),
                arrival NVARCHAR(50),
                departure NVARCHAR(50),
                adult NVARCHAR(50),
                child NVARCHAR(50),
                note NVARCHAR(50),
                totPrice NVARCHAR(50),
                deposit NVARCHAR(50),
                confirmed NVARCHAR(50))";
        CreateTable(path, sql);
    }

    public void CreateDataBase(string table) {
        try {
            string path = GetDataBasePath(G.dataBase);
            string dir = Path.GetDirectoryName(path);
            if (!Directory.Exists(dir)) {
                Directory.CreateDirectory(dir);
            }
            if (!File.Exists(path)) {
                SQLiteConnection.CreateFile(path);
            }
            CreateTables(table, path);
        }
        catch (Exception e) { }
    }

    public void CreateGlobalDataBase(string path, string table) {
        try {
            string dir = Path.GetDirectoryName(path);
            if (!Directory.Exists(dir)) {
                Directory.CreateDirectory(dir);
            }
            if (!File.Exists(path)) {
                SQLiteConnection.CreateFile(path);
            }
            CreateTables(table, path);
        }
        catch (Exception e) { }
    }

    private void CreateTables(string table, string path) {
        switch (table) {
            case "booking":
                Booking(path);
                break;
            default:
                break;
        }
    }

    private void CreateTable(string path, string sql) {
        try {
            if (File.Exists(path)) {
                using (SQLiteConnection connection = new SQLiteConnection("Data Source=" + path)) {
                    connection.Open();
                    using (SQLiteCommand command = new SQLiteCommand(sql, connection)) {
                        command.ExecuteNonQuery();
                    }
                    connection.Close();
                }
            }
        }
        catch (Exception e) { }
    }

    public string GetDataBasePath(string dataBase) {
        return HttpContext.Current.Server.MapPath(string.Format("~/data/{0}", dataBase));
    }
}