.class Lcom/google/android/gms/common/api/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TE:Lcom/google/android/gms/common/api/d;

.field final synthetic TF:Lcom/google/android/gms/common/api/Api$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/Api$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d$4;->TF:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->j(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TF:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->k(Lcom/google/android/gms/common/api/d;)I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$4;->TF:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/d;->b(Lcom/google/android/gms/common/api/d;I)I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->c(Lcom/google/android/gms/common/api/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$4;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
