.class public Lcom/google/android/location/wearable/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/m;
.implements Lcom/google/android/gms/wearable/internal/bf;


# instance fields
.field public final a:Ljava/util/Collection;

.field private final b:Lcom/google/android/gms/common/api/j;

.field private final c:Lcom/google/android/gms/wearable/t;

.field private final d:Lcom/google/android/gms/wearable/d;

.field private final e:Lcom/google/android/gms/wearable/o;

.field private final f:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wearable/y;->f:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/wearable/y;->c:Lcom/google/android/gms/wearable/t;

    sget-object v2, Lcom/google/android/gms/wearable/y;->b:Lcom/google/android/gms/wearable/o;

    sget-object v3, Lcom/google/android/gms/wearable/y;->a:Lcom/google/android/gms/wearable/d;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/location/wearable/b;-><init>(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/wearable/t;Lcom/google/android/gms/wearable/o;Lcom/google/android/gms/wearable/d;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/wearable/t;Lcom/google/android/gms/wearable/o;Lcom/google/android/gms/wearable/d;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/wearable/b;->f:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    .line 65
    iput-object p2, p0, Lcom/google/android/location/wearable/b;->c:Lcom/google/android/gms/wearable/t;

    .line 66
    iput-object p4, p0, Lcom/google/android/location/wearable/b;->d:Lcom/google/android/gms/wearable/d;

    .line 67
    iput-object p3, p0, Lcom/google/android/location/wearable/b;->e:Lcom/google/android/gms/wearable/o;

    .line 68
    iput-object p1, p0, Lcom/google/android/location/wearable/b;->b:Lcom/google/android/gms/common/api/j;

    .line 69
    invoke-static {p0}, Lcom/google/android/location/wearable/LocationWearableListenerService;->a(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method private c(Lcom/google/android/gms/wearable/s;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/bf;

    .line 159
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/internal/bf;->b(Lcom/google/android/gms/wearable/s;)V

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wearable/m;)Lcom/google/android/gms/wearable/q;
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/location/wearable/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/google/android/gms/wearable/internal/an;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xfa0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/an;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->e:Lcom/google/android/gms/wearable/o;

    iget-object v1, p0, Lcom/google/android/location/wearable/b;->b:Lcom/google/android/gms/common/api/j;

    invoke-virtual {p3}, Lcom/google/android/gms/wearable/m;->a()[B

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/android/gms/wearable/o;->a(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/y;->a()Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/q;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/s;

    .line 186
    invoke-direct {p0, v0}, Lcom/google/android/location/wearable/b;->c(Lcom/google/android/gms/wearable/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 188
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 189
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/i;)V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/bf;

    .line 176
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/internal/bf;->a(Lcom/google/android/gms/wearable/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
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

.method public final a(Lcom/google/android/gms/wearable/internal/bf;)V
    .locals 4

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/s;

    .line 79
    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/bf;->a(Lcom/google/android/gms/wearable/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 87
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 89
    new-instance v0, Lcom/google/android/location/wearable/c;

    invoke-direct {v0, p0}, Lcom/google/android/location/wearable/c;-><init>(Lcom/google/android/location/wearable/b;)V

    .line 99
    iget-object v2, p0, Lcom/google/android/location/wearable/b;->c:Lcom/google/android/gms/wearable/t;

    iget-object v3, p0, Lcom/google/android/location/wearable/b;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v2, v3}, Lcom/google/android/gms/wearable/t;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/ab;)V

    .line 101
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/r;)V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/bf;

    .line 167
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/internal/bf;->a(Lcom/google/android/gms/wearable/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
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

.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/bf;

    .line 140
    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/internal/bf;->a(Lcom/google/android/gms/wearable/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 143
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/location/wearable/b;->a()Z

    .line 144
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method final a()Z
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    .line 203
    const/4 v0, 0x0

    monitor-exit v1

    .line 206
    :goto_0
    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->b:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 206
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/location/wearable/b;->a:Ljava/util/Collection;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/wearable/b;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/google/android/location/wearable/b;->c(Lcom/google/android/gms/wearable/s;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/wearable/b;->a()Z

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
