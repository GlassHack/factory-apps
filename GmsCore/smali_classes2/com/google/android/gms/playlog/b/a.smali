.class final Lcom/google/android/gms/playlog/b/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/playlog/b/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/playlog/b/a;
    .locals 4

    .prologue
    .line 29
    const-class v1, Lcom/google/android/gms/playlog/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/playlog/b/a;->a:Lcom/google/android/gms/playlog/b/a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/android/gms/playlog/b/a;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    const-string v3, "playlog.db"

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/playlog/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/playlog/b/a;->a:Lcom/google/android/gms/playlog/b/a;

    .line 32
    :cond_0
    sget-object v0, Lcom/google/android/gms/playlog/b/a;->a:Lcom/google/android/gms/playlog/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    invoke-static {}, Lcom/google/android/gms/playlog/b/i;->a()V

    invoke-static {p1}, Lcom/google/android/gms/playlog/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/google/android/gms/playlog/b/i;->a()V

    invoke-static {p1}, Lcom/google/android/gms/playlog/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/playlog/b/i;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/playlog/b/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 63
    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrade database: oldVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/google/android/gms/playlog/b/i;->b()V

    .line 65
    invoke-static {}, Lcom/google/android/gms/playlog/b/c;->a()V

    .line 66
    return-void
.end method
