.class public Lcom/google/glass/voice/menu/GlassMenuUsageProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final HOME_MENU_ITEMS_USAGE_STATS_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.UsageStats"


# instance fields
.field dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 143
    const-string v1, "usage_stats"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "vnd.android.cursor.dir/vnd.UsageStats"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 132
    const-string v2, "usage_stats"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 133
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 134
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->URI:Landroid/net/Uri;

    .line 136
    :cond_0
    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    const-string v1, "usage_stats"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    const-string v1, "usage_stats"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
