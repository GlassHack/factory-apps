.class public final Lcom/google/android/location/o/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l;
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field final a:Lcom/google/android/gms/common/api/j;

.field final b:Ljava/util/LinkedHashMap;

.field final c:Lcom/google/android/gms/location/d;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/o/n;->d:Z

    .line 49
    sget-object v0, Lcom/google/android/gms/location/n;->b:Lcom/google/android/gms/location/d;

    iput-object v0, p0, Lcom/google/android/location/o/n;->c:Lcom/google/android/gms/location/d;

    .line 50
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/n;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/m;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/o/n;->a:Lcom/google/android/gms/common/api/j;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/google/android/location/o/r;)V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/google/android/location/o/n;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/o/n;->b(Ljava/lang/Object;Lcom/google/android/location/o/r;)V

    .line 183
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/o/n;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/o/n;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/location/o/n;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/Object;Lcom/google/android/location/o/r;)V
    .locals 4

    .prologue
    .line 191
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 193
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/location/o/r;->a()Lcom/google/android/gms/common/api/y;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/google/android/location/o/q;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/location/o/q;-><init>(Lcom/google/android/location/o/n;Lcom/google/android/location/o/r;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    :goto_0
    return-void

    .line 208
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 71
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/location/o/n;->d:Z

    .line 72
    iget-object v0, p0, Lcom/google/android/location/o/n;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 166
    const-string v0, "FlpInternalHelper"

    const-string v1, "Connection suspended within location process for FLP connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/o/r;

    invoke-direct {p0, v3, v0}, Lcom/google/android/location/o/n;->b(Ljava/lang/Object;Lcom/google/android/location/o/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 2

    .prologue
    .line 171
    const-string v0, "FlpInternalHelper"

    const-string v1, "Failed to connect to FLP from within location process"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/location/o/o;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/location/o/o;-><init>(Lcom/google/android/location/o/n;Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/location/o/n;->a(Ljava/lang/Object;Lcom/google/android/location/o/r;)V

    .line 111
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/l;)V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/location/o/p;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/o/p;-><init>(Lcom/google/android/location/o/n;Lcom/google/android/gms/location/l;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/o/n;->a(Ljava/lang/Object;Lcom/google/android/location/o/r;)V

    .line 143
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 81
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/location/o/n;->d:Z

    .line 82
    iget-object v0, p0, Lcom/google/android/location/o/n;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
