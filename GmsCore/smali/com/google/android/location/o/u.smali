.class public final Lcom/google/android/location/o/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/location/l;

.field b:J

.field private final c:Lcom/google/android/location/o/n;

.field private final d:Landroid/os/Looper;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/location/o/n;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/o/u;->b:J

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/o/u;->e:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/google/android/location/o/u;->c:Lcom/google/android/location/o/n;

    .line 34
    iput-object p2, p0, Lcom/google/android/location/o/u;->a:Lcom/google/android/gms/location/l;

    .line 35
    iput-object p3, p0, Lcom/google/android/location/o/u;->d:Landroid/os/Looper;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/location/o/u;->a:Lcom/google/android/gms/location/l;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/o/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/l;

    .line 80
    iget-object v3, p0, Lcom/google/android/location/o/u;->c:Lcom/google/android/location/o/n;

    invoke-virtual {v3, v0}, Lcom/google/android/location/o/n;->a(Lcom/google/android/gms/location/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 82
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/o/u;->e:Ljava/util/List;

    .line 83
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 50
    new-instance v6, Lcom/google/android/location/o/v;

    invoke-direct {v6, p0}, Lcom/google/android/location/o/v;-><init>(Lcom/google/android/location/o/u;)V

    .line 56
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 61
    iget-object v1, p0, Lcom/google/android/location/o/u;->c:Lcom/google/android/location/o/n;

    iget-object v7, p0, Lcom/google/android/location/o/u;->d:Landroid/os/Looper;

    invoke-virtual {v1, v0, v6, v7}, Lcom/google/android/location/o/n;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    move v1, v3

    .line 63
    goto :goto_0

    :cond_0
    move v1, v3

    .line 60
    goto :goto_1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/o/u;->a:Lcom/google/android/gms/location/l;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/o/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/l;

    .line 68
    iget-object v3, p0, Lcom/google/android/location/o/u;->c:Lcom/google/android/location/o/n;

    invoke-virtual {v3, v0}, Lcom/google/android/location/o/n;->a(Lcom/google/android/gms/location/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 70
    :cond_2
    :try_start_1
    iput-object v4, p0, Lcom/google/android/location/o/u;->e:Ljava/util/List;

    .line 71
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
