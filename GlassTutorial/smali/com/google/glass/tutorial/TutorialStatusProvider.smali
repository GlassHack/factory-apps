.class public Lcom/google/glass/tutorial/TutorialStatusProvider;
.super Landroid/content/ContentProvider;
.source "TutorialStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/tutorial/TutorialStatusProvider$1;,
        Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final TUTORIAL_STATUS_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.TutorialStatus"


# instance fields
.field private dbHelper:Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialStatusProvider;->dbHelper:Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 55
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 56
    const-string v1, "tutorials"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 41
    const-string v0, "vnd.android.cursor.item/vnd.TutorialStatus"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialStatusProvider;->dbHelper:Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 47
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "tutorials"

    invoke-virtual {v0, v1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 49
    sget-object v1, Lcom/google/glass/tutorial/TutorialStatusContract;->URI:Landroid/net/Uri;

    return-object v1
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;-><init>(Landroid/content/Context;Lcom/google/glass/tutorial/TutorialStatusProvider$1;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialStatusProvider;->dbHelper:Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;

    .line 28
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

    .line 34
    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialStatusProvider;->dbHelper:Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "tutorials"

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
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialStatusProvider;->dbHelper:Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialStatusProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 63
    const-string v1, "tutorials"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
