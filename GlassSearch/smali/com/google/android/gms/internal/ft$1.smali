.class Lcom/google/android/gms/internal/ft$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ft;->syncRawContact(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OQ:Landroid/net/Uri;

.field final synthetic OR:Lcom/google/android/gms/internal/ft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ft;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ft$1;->OR:Lcom/google/android/gms/internal/ft;

    iput-object p2, p0, Lcom/google/android/gms/internal/ft$1;->OQ:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ft$1;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ft$1;->OQ:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fc;->syncRawContact(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ft$1;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->xD:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method
