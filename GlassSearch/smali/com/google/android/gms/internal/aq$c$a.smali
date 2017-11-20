.class public final Lcom/google/android/gms/internal/aq$c$a;
.super Lcom/google/android/gms/internal/aq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aq$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic vs:Lcom/google/android/gms/internal/aq$c;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/aq$c;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/aq$c$a;->vs:Lcom/google/android/gms/internal/aq$c;

    iget-object v0, p1, Lcom/google/android/gms/internal/aq$c;->vp:Lcom/google/android/gms/internal/aq;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/aq$a;-><init>(Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/internal/aq$1;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aq$c$a;->vs:Lcom/google/android/gms/internal/aq$c;

    new-instance v1, Lcom/google/android/gms/internal/aq$c$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/aq$c$a;->vs:Lcom/google/android/gms/internal/aq$c;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/gms/internal/aq$c$b;-><init>(Lcom/google/android/gms/internal/aq$c;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aq$c;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public onDisconnected()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aq$c$a;->vs:Lcom/google/android/gms/internal/aq$c;

    new-instance v1, Lcom/google/android/gms/internal/aq$c$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/aq$c$a;->vs:Lcom/google/android/gms/internal/aq$c;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/16 v5, 0x7d5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/aq$c$b;-><init>(Lcom/google/android/gms/internal/aq$c;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aq$c;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public onError(I)V
    .locals 5
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/aq$c$a;->vs:Lcom/google/android/gms/internal/aq$c;

    new-instance v1, Lcom/google/android/gms/internal/aq$c$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/aq$c$a;->vs:Lcom/google/android/gms/internal/aq$c;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/aq$c$b;-><init>(Lcom/google/android/gms/internal/aq$c;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aq$c;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
