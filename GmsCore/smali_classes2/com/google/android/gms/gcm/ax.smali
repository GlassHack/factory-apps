.class final Lcom/google/android/gms/gcm/ax;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/aw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/aw;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/gcm/ax;->a:Lcom/google/android/gms/gcm/aw;

    .line 55
    const-string v0, "gcm_registrar.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "CREATE TABLE registrations (_id INTEGER PRIMARY KEY,package_name STRING,sender_id STRING,uid INTEGER,reg_id STRING,timestamp_ms INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "CREATE INDEX registration_index ON registrations(package_name, sender_id, uid)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 75
    const-string v0, "DROP TABLE registrations"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE registrations (_id INTEGER PRIMARY KEY,package_name STRING,sender_id STRING,uid INTEGER,reg_id STRING,timestamp_ms INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method
