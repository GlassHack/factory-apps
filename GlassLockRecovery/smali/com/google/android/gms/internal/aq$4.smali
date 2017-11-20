.class Lcom/google/android/gms/internal/aq$4;
.super Lcom/google/android/gms/internal/aq$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aq;->isMirroring(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vp:Lcom/google/android/gms/internal/aq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aq$4;->vp:Lcom/google/android/gms/internal/aq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aq$c;-><init>(Lcom/google/android/gms/internal/aq;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ar;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aq$4;->a(Lcom/google/android/gms/internal/ar;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/aq$c$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aq$c$a;-><init>(Lcom/google/android/gms/internal/aq$c;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ar;->b(Lcom/google/android/gms/internal/as;)V

    return-void
.end method
