.class public final Lcom/google/android/gms/auth/trustagent/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;
.implements Lcom/google/android/gms/auth/trustagent/trustlet/ak;


# static fields
.field private static d:Lcom/google/android/gms/auth/trustagent/ar;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

.field public c:Z

.field private final e:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

.field private final f:Ljava/util/List;

.field private g:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->e:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->f:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->c:Z

    .line 73
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/trustagent/ar;
    .locals 3

    .prologue
    .line 40
    const-class v1, Lcom/google/android/gms/auth/trustagent/ar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/trustagent/ar;->d:Lcom/google/android/gms/auth/trustagent/ar;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/google/android/gms/auth/trustagent/ar;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/trustagent/ar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/trustagent/ar;->d:Lcom/google/android/gms/auth/trustagent/ar;

    .line 43
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/trustagent/ar;->d:Lcom/google/android/gms/auth/trustagent/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->g:I

    if-eq p1, v0, :cond_0

    .line 212
    iput p1, p0, Lcom/google/android/gms/auth/trustagent/ar;->g:I

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/ar;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/as;

    .line 215
    invoke-interface {v0, p1}, Lcom/google/android/gms/auth/trustagent/as;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
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

.method private c(Z)V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->g:I

    .line 188
    if-eqz p1, :cond_0

    .line 189
    or-int/lit8 v0, v0, 0x2

    .line 193
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/ar;->a(I)V

    .line 194
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 191
    :cond_0
    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/ar;->c(Z)V

    .line 178
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/trustagent/as;)V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->e:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a(Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->e:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/ar;->c(Z)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/trustagent/ar;->b(Z)V

    .line 169
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/ar;->c(Z)V

    .line 183
    return-void
.end method

.method public final b(Lcom/google/android/gms/auth/trustagent/as;)V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->e:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/d;->b(Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/f;)V

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/ar;->c(Z)V

    .line 125
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

.method public final b(Z)V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->g:I

    .line 200
    if-eqz p1, :cond_0

    .line 201
    or-int/lit8 v0, v0, 0x1

    .line 205
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/ar;->a(I)V

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 203
    :cond_0
    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/ar;->c:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
