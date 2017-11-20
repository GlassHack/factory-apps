.class Lcom/google/android/gms/auth/be/proximity/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/google/android/gms/auth/be/proximity/b/a;


# instance fields
.field private final c:Lcom/google/android/gms/auth/be/proximity/b/b;

.field private d:I

.field private e:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/be/proximity/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->c:Lcom/google/android/gms/auth/be/proximity/b/b;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->d:I

    .line 47
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/b/a;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/google/android/gms/auth/be/proximity/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/a;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/b/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/be/proximity/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/a;->b:Lcom/google/android/gms/auth/be/proximity/b/a;

    .line 32
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/a;->b:Lcom/google/android/gms/auth/be/proximity/b/a;
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

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->d:I

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/a;->a:Ljava/lang/String;

    const-string v1, "Opening database..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->c:Lcom/google/android/gms/auth/be/proximity/b/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->d:I

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->d:I

    .line 60
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->d:I

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/b/a;->a:Ljava/lang/String;

    const-string v1, "Closing database..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/b/a;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
