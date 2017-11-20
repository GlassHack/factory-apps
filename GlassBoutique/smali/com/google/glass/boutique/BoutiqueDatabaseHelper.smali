.class public final Lcom/google/glass/boutique/BoutiqueDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BoutiqueDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/BoutiqueDatabaseHelper$Indexes;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "boutique.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-string v0, "boutique.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    iput-object p1, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/boutique/BoutiqueDatabaseHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    const-string v0, "CREATE TABLE glassware (_id INTEGER PRIMARY KEY AUTOINCREMENT, glassware_id INTEGER,mirror_project_id TEXT,apk_package_name TEXT,is_enabled INTEGER DEFAULT 0,protobuf_blob BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "CREATE INDEX ix_glassware_id ON glassware(glassware_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "CREATE INDEX ix_mirror_project_id ON glassware(mirror_project_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "CREATE INDEX ix_apk_package_name ON glassware(apk_package_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "CREATE INDEX ix_is_enabled ON glassware(is_enabled);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 169
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 81
    sget-object v0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Upgrading database from version %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const-string v9, "temp_glassware"

    .line 85
    .local v9, "tempGlasswareTable":Ljava/lang/String;
    const-string v0, "DROP TABLE IF EXISTS temp_glassware"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string v0, "ALTER TABLE glassware RENAME TO temp_glassware;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "DROP TABLE IF EXISTS glassware"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v0, "DROP INDEX IF EXISTS ix_apk_package_name"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "DROP INDEX IF EXISTS ix_glassware_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v0, "DROP INDEX IF EXISTS ix_mirror_project_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "DROP INDEX IF EXISTS ix_is_enabled"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    const-string v1, "temp_glassware"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 102
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 106
    sget-object v0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Migration query returned %d results."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 111
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;

    invoke-direct {v1, p0, p1, v8}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;-><init>(Lcom/google/glass/boutique/BoutiqueDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method
