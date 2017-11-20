.class public final Lcom/google/android/gms/wearable/service/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectionconfig.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/wearable/service/a;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/wearable/service/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/service/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 44
    const-string v0, "CREATE TABLE connectionConfigurations (_id INTEGER PRIMARY KEY AUTOINCREMENT,androidId STRING,name STRING NOT NULL,pairedBtAddress STRING NOT NULL,connectionType INTEGER NOT NULL,role INTEGER NOT NULL,connectionEnabled INTEGER NOT NULL, UNIQUE(name) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
