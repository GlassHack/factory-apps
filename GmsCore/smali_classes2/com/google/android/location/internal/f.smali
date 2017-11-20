.class public final Lcom/google/android/location/internal/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/location/internal/f;->a:Ljava/util/Set;

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 3

    .prologue
    .line 71
    const-class v1, Lcom/google/android/location/internal/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/internal/f;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/g;

    .line 72
    invoke-interface {v0}, Lcom/google/android/location/internal/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 74
    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/android/location/internal/g;)V
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/google/android/location/internal/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/internal/f;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v1

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Lcom/google/android/location/internal/g;)V
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/google/android/location/internal/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/location/internal/f;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/google/android/location/internal/f;->a()V

    .line 68
    return-void
.end method
