.class public Lcom/google/glass/voice/menu/GlassMenuUsageProvider;
.super Landroid/content/ContentProvider;
.source "GlassMenuUsageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;
    }
.end annotation


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
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 143
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "usage_stats"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.UsageStats"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 132
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, "usage_stats"

    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 133
    .local v1, "outcome":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_0

    .line 134
    sget-object v3, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->URI:Landroid/net/Uri;

    .line 136
    :cond_0
    return-object v3
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
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "usage_stats"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageProvider;->dbHelper:Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/GlassMenuUsageProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "usage_stats"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
