.class public final Lcom/google/android/gms/location/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/location/internal/t;

.field b:Landroid/content/ContentProviderClient;

.field c:Z

.field d:Ljava/util/HashMap;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/t;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/m;->b:Landroid/content/ContentProviderClient;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/internal/m;->c:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/location/internal/m;->e:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/google/android/gms/location/internal/m;->a:Lcom/google/android/gms/location/internal/t;

    .line 58
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/location/l;Landroid/os/Looper;)Lcom/google/android/gms/location/internal/o;
    .locals 3

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/o;

    .line 109
    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lcom/google/android/gms/location/internal/o;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/location/internal/o;-><init>(Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
