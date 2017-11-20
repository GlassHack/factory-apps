.class final Lcom/google/android/gms/auth/be/proximity/authorization/bt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;I)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/a;->b:Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;

    iput p2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/a;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    .line 126
    :goto_0
    iget v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/a;->a:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    move v3, v1

    .line 128
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/a;->b:Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;

    invoke-static {v4}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->a(Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;)Lcom/google/android/gms/auth/be/proximity/authorization/a;

    move-result-object v4

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iget-object v2, v4, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, v4, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/be/proximity/authorization/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v2

    .line 124
    goto :goto_0

    :cond_3
    move v3, v2

    .line 126
    goto :goto_1

    .line 128
    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
