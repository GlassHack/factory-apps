.class Lcom/google/glass/camera/photosync/PhotoSyncProvider$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhotoSyncProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/photosync/PhotoSyncProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/photosync/PhotoSyncProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/photosync/PhotoSyncProvider;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/photosync/PhotoSyncProvider;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "x3"    # I

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/camera/photosync/PhotoSyncProvider$1;->this$0:Lcom/google/glass/camera/photosync/PhotoSyncProvider;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    const-string v0, "CREATE TABLE photo_sync (_id TEXT PRIMARY KEY NOT NULL, is_synced INTEGER DEFAULT 0, is_pending INTEGER DEFAULT 0, timestamp LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 76
    invoke-static {}, Lcom/google/glass/camera/photosync/PhotoSyncProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Upgrading database from version %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const-string v0, "DROP TABLE IF EXISTS photo_sync"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/photosync/PhotoSyncProvider$1;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    return-void
.end method
