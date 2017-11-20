.class Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SyncableSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/syncable/SyncableSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "syncablesettings.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const-string v0, "syncablesettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/settings/syncable/SyncableSettingsProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/google/glass/settings/syncable/SyncableSettingsProvider$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 185
    const-string v0, "CREATE TABLE syncable_settings (name TEXT, value TEXT, is_dirty INTEGER DEFAULT 0, last_updated_time INTEGER DEFAULT 0, PRIMARY KEY (name));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 177
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 182
    return-void
.end method
