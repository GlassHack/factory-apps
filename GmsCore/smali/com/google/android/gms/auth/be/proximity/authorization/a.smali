.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/google/android/gms/auth/be/proximity/authorization/a;


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    .line 53
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/auth/be/proximity/authorization/a;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/google/android/gms/auth/be/proximity/authorization/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->b:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->b:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    .line 36
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->b:Lcom/google/android/gms/auth/be/proximity/authorization/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/be/proximity/authorization/b;)V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    monitor-enter v1

    .line 75
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/b;

    .line 76
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/auth/be/proximity/authorization/b;->a(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
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
