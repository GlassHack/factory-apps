.class public final Lcom/google/android/gms/playlog/internal/i;
.super Lcom/google/android/gms/common/internal/e;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/playlog/internal/g;

.field private final g:Lcom/google/android/gms/playlog/internal/d;

.field private final h:Ljava/lang/Object;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/playlog/internal/g;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/g;Lcom/google/android/gms/common/h;[Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->e:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/g;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->f:Lcom/google/android/gms/playlog/internal/g;

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->f:Lcom/google/android/gms/playlog/internal/g;

    iput-object p0, v0, Lcom/google/android/gms/playlog/internal/g;->a:Lcom/google/android/gms/playlog/internal/i;

    .line 59
    new-instance v0, Lcom/google/android/gms/playlog/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/playlog/internal/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->g:Lcom/google/android/gms/playlog/internal/d;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->h:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/i;->i:Z

    .line 63
    return-void
.end method

.method private b(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->g:Lcom/google/android/gms/playlog/internal/d;

    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/d;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/playlog/internal/e;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/playlog/internal/e;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/playlog/internal/d;->b:I

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method private m()V
    .locals 7

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/i;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Z)V

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->g:Lcom/google/android/gms/playlog/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 224
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/i;->g:Lcom/google/android/gms/playlog/internal/d;

    iget-object v1, v1, Lcom/google/android/gms/playlog/internal/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/e;

    .line 226
    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/e;->c:Lcom/google/n/a/b/a/a/i;

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/i;->j()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/playlog/internal/a;

    iget-object v5, p0, Lcom/google/android/gms/playlog/internal/i;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/playlog/internal/e;->a:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/e;->c:Lcom/google/n/a/b/a/a/i;

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    invoke-interface {v1, v5, v6, v0}, Lcom/google/android/gms/playlog/internal/a;->a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send cached log events to AndroidLog service.  Retaining in memory cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    :goto_2
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/e;->a:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/e;->b:Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/i;->j()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/playlog/internal/a;

    iget-object v5, p0, Lcom/google/android/gms/playlog/internal/i;->e:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/playlog/internal/a;->a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    .line 239
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 242
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/playlog/internal/e;->a:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    .line 243
    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/e;->b:Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 245
    goto :goto_1

    .line 246
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 247
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/i;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/i;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/playlog/internal/a;->a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Ljava/util/List;)V

    .line 249
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->g:Lcom/google/android/gms/playlog/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/playlog/internal/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 27
    invoke-static {p1}, Lcom/google/android/gms/playlog/internal/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/playlog/internal/a;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/aa;Lcom/google/android/gms/common/internal/i;)V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    const v1, 0x5d4044

    iget-object v2, p0, Lcom/google/android/gms/common/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/aa;->g(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public final a(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/i;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/i;->i:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/i;->b(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    .line 140
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 138
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/i;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/i;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/a;

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/i;->e:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Lcom/google/android/gms/playlog/internal/a;->a(Ljava/lang/String;Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "PlayLoggerImpl"

    const-string v2, "Couldn\'t send log event.  Will try caching."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/i;->b(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 138
    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "PlayLoggerImpl"

    const-string v2, "Service was disconnected.  Will try caching."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/i;->b(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/i;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/i;->i:Z

    .line 122
    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/i;->i:Z

    .line 125
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/i;->i:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/i;->m()V

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/i;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    monitor-exit v1

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->f:Lcom/google/android/gms/playlog/internal/g;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/playlog/internal/g;->b:Z

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/i;->c()V

    .line 106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/i;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/i;->f:Lcom/google/android/gms/playlog/internal/g;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/playlog/internal/g;->b:Z

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/i;->d()V

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
