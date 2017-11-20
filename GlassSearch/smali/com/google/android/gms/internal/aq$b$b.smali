.class public final Lcom/google/android/gms/internal/aq$b$b;
.super Lcom/google/android/gms/internal/aq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aq$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "b"
.end annotation


# instance fields
.field final synthetic vr:Lcom/google/android/gms/internal/aq$b;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/aq$b;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/aq$b$b;->vr:Lcom/google/android/gms/internal/aq$b;

    iget-object v0, p1, Lcom/google/android/gms/internal/aq$b;->vp:Lcom/google/android/gms/internal/aq;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/aq$a;-><init>(Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/internal/aq$1;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aq$b$b;->vr:Lcom/google/android/gms/internal/aq$b;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aq$b;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/aq$b$b;->vr:Lcom/google/android/gms/internal/aq$b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aq$b;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
