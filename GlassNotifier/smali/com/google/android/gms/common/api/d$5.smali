.class Lcom/google/android/gms/common/api/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/d;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TE:Lcom/google/android/gms/common/api/d;

.field final synthetic TG:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic TH:Lcom/google/android/gms/common/api/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$5;->TE:Lcom/google/android/gms/common/api/d;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d$5;->TG:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/api/d$5;->TH:Lcom/google/android/gms/common/api/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/common/api/d$5;->TE:Lcom/google/android/gms/common/api/d;

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$5;->TG:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$5;->TH:Lcom/google/android/gms/common/api/g;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/g;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    return-void
.end method
