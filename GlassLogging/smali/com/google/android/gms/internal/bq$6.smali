.class Lcom/google/android/gms/internal/bq$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bq;->ad(Ljava/lang/String;)Lcom/google/android/gms/droidguard/DroidGuardHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BO:Lcom/google/android/gms/internal/bq;

.field final synthetic BT:Ljava/lang/String;

.field final synthetic BV:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bq;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bq$6;->BO:Lcom/google/android/gms/internal/bq;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq$6;->BT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq$6;->BV:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq$6;->BO:Lcom/google/android/gms/internal/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bq;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->ds()Lcom/google/android/gms/internal/bu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bs;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq$6;->BO:Lcom/google/android/gms/internal/bq;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/bs;-><init>(Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/bq;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bq$6;->BT:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/bu;->af(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$6;->BV:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DGClientImpl"

    const-string v2, "Unexpected exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bq$6;->BV:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/google/android/gms/internal/br;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bq$6;->BV:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/google/android/gms/internal/br;

    const-string v2, "Disconnected."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
