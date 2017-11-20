.class Lcom/google/android/gsf/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# instance fields
.field private mAssistedGpsSettingNeedsUpdate:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string v0, "googlesettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    iput-object p1, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private insertDefaultPartnerSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 85
    const-string v3, "INSERT OR IGNORE INTO partner(name,value) VALUES(?,?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 88
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    iget-object v3, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    .local v1, "r":Landroid/content/res/Resources;
    const-string v3, "client_id"

    const v4, 0x7f09000f

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 93
    iget-object v3, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "logging_id2"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "id2":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    const-string v3, "logging_id2"

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :cond_0
    const-string v3, "network_location_opt_in"

    const v4, 0x7f090017

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 100
    const-string v3, "use_location_for_services"

    const v4, 0x7f090018

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 104
    return-void
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 110
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    return-void
.end method


# virtual methods
.method final assistedGpsSettingNeedsUpdate()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mAssistedGpsSettingNeedsUpdate:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    const-string v0, "CREATE TABLE partner (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE INDEX partnerIndex1 ON partner (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/DatabaseHelper;->insertDefaultPartnerSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    const/4 v4, 0x1

    .line 66
    const-string v1, "GoogleSettingsProvider.DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading settings database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-ne p2, v4, :cond_0

    .line 70
    iput-boolean v4, p0, Lcom/google/android/gsf/settings/DatabaseHelper;->mAssistedGpsSettingNeedsUpdate:Z

    .line 72
    :cond_0
    const/4 v1, 0x3

    if-ge p2, v1, :cond_1

    .line 74
    const-string v1, "INSERT OR IGNORE INTO partner(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 76
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "network_location_opt_in"

    const v2, 0x7f090017

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 78
    const-string v1, "use_location_for_services"

    const v2, 0x7f090018

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 82
    .end local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    return-void
.end method
