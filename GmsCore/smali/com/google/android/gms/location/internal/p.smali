.class public final Lcom/google/android/gms/location/internal/p;
.super Lcom/google/android/gms/common/internal/e;
.source "SourceFile"


# instance fields
.field private final e:Lcom/google/android/gms/location/internal/t;

.field private final f:Lcom/google/android/gms/location/internal/m;

.field private final g:Lcom/google/android/gms/location/places/internal/k;

.field private final h:Lcom/google/android/gms/location/a/a/a;

.field private final i:Lcom/google/android/gms/b/a/a;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 122
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/location/internal/p;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;B)V

    .line 124
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 6

    .prologue
    .line 130
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/m;[Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/google/android/gms/location/internal/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/internal/q;-><init>(Lcom/google/android/gms/location/internal/p;B)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    .line 131
    new-instance v0, Lcom/google/android/gms/location/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/t;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/p;->f:Lcom/google/android/gms/location/internal/m;

    .line 132
    iput-object p6, p0, Lcom/google/android/gms/location/internal/p;->j:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/google/android/gms/location/places/internal/k;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    invoke-direct {v0, p3, v1, p7}, Lcom/google/android/gms/location/places/internal/k;-><init>(Ljava/lang/String;Lcom/google/android/gms/location/internal/t;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/p;->g:Lcom/google/android/gms/location/places/internal/k;

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/p;->h:Lcom/google/android/gms/location/a/a/a;

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/p;->i:Lcom/google/android/gms/b/a/a;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 101
    new-array v0, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;[Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/google/android/gms/location/internal/q;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/internal/q;-><init>(Lcom/google/android/gms/location/internal/p;B)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    .line 102
    new-instance v0, Lcom/google/android/gms/location/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/t;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/p;->f:Lcom/google/android/gms/location/internal/m;

    .line 103
    iput-object p4, p0, Lcom/google/android/gms/location/internal/p;->j:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/google/android/gms/location/places/internal/k;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/k;-><init>(Ljava/lang/String;Lcom/google/android/gms/location/internal/t;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/p;->g:Lcom/google/android/gms/location/places/internal/k;

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    iput-object v3, p0, Lcom/google/android/gms/location/internal/p;->h:Lcom/google/android/gms/location/a/a/a;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/location/internal/p;->e:Lcom/google/android/gms/location/internal/t;

    iput-object v3, p0, Lcom/google/android/gms/location/internal/p;->i:Lcom/google/android/gms/b/a/a;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/location/internal/p;)V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/p;->i()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lcom/google/android/gms/location/internal/k;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/j;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/aa;Lcom/google/android/gms/common/internal/i;)V
    .locals 3

    .prologue
    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 377
    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/location/internal/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const v1, 0x5d4044

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/aa;->f(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 381
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/location/internal/p;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    .line 280
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/google/android/gms/location/internal/p;->f:Lcom/google/android/gms/location/internal/m;

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/p;->f:Lcom/google/android/gms/location/internal/m;

    iget-object v2, v0, Lcom/google/android/gms/location/internal/m;->a:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v2}, Lcom/google/android/gms/location/internal/t;->a()V

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/location/internal/m;->a(Lcom/google/android/gms/location/l;Landroid/os/Looper;)Lcom/google/android/gms/location/internal/o;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/location/internal/m;->a:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/j;

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/h;)V

    .line 293
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/l;)V
    .locals 4

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/android/gms/location/internal/p;->f:Lcom/google/android/gms/location/internal/m;

    iget-object v0, v1, Lcom/google/android/gms/location/internal/m;->a:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->a()V

    const-string v0, "Invalid null listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/o;

    iget-object v3, v1, Lcom/google/android/gms/location/internal/m;->b:Landroid/content/ContentProviderClient;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/google/android/gms/location/internal/m;->b:Landroid/content/ContentProviderClient;

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/location/internal/m;->b:Landroid/content/ContentProviderClient;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/o;->a()V

    iget-object v1, v1, Lcom/google/android/gms/location/internal/m;->a:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/j;

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/location/h;)V

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 145
    iget-object v2, p0, Lcom/google/android/gms/location/internal/p;->f:Lcom/google/android/gms/location/internal/m;

    monitor-enter v2

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/p;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v3, p0, Lcom/google/android/gms/location/internal/p;->f:Lcom/google/android/gms/location/internal/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v3, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/o;

    if-eqz v0, :cond_0

    iget-object v1, v3, Lcom/google/android/gms/location/internal/m;->a:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v1}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/internal/j;

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/location/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 150
    :cond_1
    :try_start_5
    iget-object v0, v3, Lcom/google/android/gms/location/internal/m;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/location/internal/p;->f:Lcom/google/android/gms/location/internal/m;

    iget-boolean v0, v1, Lcom/google/android/gms/location/internal/m;->c:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_2

    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/location/internal/m;->a:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->a()V

    iget-object v0, v1, Lcom/google/android/gms/location/internal/m;->a:Lcom/google/android/gms/location/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/t;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/j;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/google/android/gms/location/internal/j;->a(Z)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/gms/location/internal/m;->c:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 155
    :cond_2
    :try_start_8
    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->d()V

    .line 156
    monitor-exit v2

    return-void

    .line 153
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public final k()Lcom/google/android/gms/location/places/internal/k;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/gms/location/internal/p;->g:Lcom/google/android/gms/location/places/internal/k;

    return-object v0
.end method
