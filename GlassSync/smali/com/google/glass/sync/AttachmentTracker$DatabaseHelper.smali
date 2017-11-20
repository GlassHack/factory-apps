.class Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AttachmentTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/AttachmentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/sync/AttachmentTracker;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/AttachmentTracker;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->this$0:Lcom/google/glass/sync/AttachmentTracker;

    .line 55
    const-string v0, "attachment_tracker.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    invoke-static {}, Lcom/google/glass/sync/AttachmentTracker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 56
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentTracker$DatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating the attachment tracking table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string v0, "CREATE TABLE attachment (_id TEXT PRIMARY KEY,file_type TEXT,refcount INTEGER,update_timestamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "CREATE TABLE id_tracking (_id TEXT PRIMARY KEY,remote_id TEXT,access_timestamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 76
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 78
    const-string v0, "CREATE TABLE id_tracking (_id TEXT PRIMARY KEY,remote_id TEXT,access_timestamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method
