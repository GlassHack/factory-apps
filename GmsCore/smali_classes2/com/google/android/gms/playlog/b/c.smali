.class final Lcom/google/android/gms/playlog/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/b/c;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/c;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 78
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 53
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public static a(J[BI)Z
    .locals 2

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/playlog/b/c;->b(J[B)I

    move-result v0

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(J[B)I
    .locals 2

    .prologue
    .line 71
    array-length v0, p2

    long-to-int v1, p0

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/common/util/r;->a([BII)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 59
    const-string v0, "CREATE TABLE log_event (_id INTEGER PRIMARY KEY AUTOINCREMENT, hash INTEGER NOT NULL, play_logger_context_id INTEGER NOT NULL, log_event BLOB NOT NULL, FOREIGN KEY (play_logger_context_id) REFERENCES play_logger_context (_id) ON DELETE RESTRICT ON UPDATE RESTRICT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public final a(J[B)J
    .locals 5

    .prologue
    .line 242
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 243
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/playlog/b/c;->b(J[B)I

    move-result v1

    .line 244
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 245
    const-string v3, "hash"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "play_logger_context_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string v1, "log_event"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/c;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 249
    const-string v1, "log_event"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 250
    sget-boolean v2, Lcom/google/android/gms/playlog/b/c;->a:Z

    if-eqz v2, :cond_0

    .line 251
    const-string v2, "LogEventTable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "INSERT: id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 254
    new-instance v2, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "INSERT: id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loggerContextId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_1
    return-wide v0
.end method

.method public final b()Lcom/google/android/gms/playlog/b/d;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Lcom/google/android/gms/playlog/b/d;

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/c;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/playlog/b/d;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;B)V

    return-object v0
.end method
