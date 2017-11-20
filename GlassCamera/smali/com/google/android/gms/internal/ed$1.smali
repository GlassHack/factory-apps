.class Lcom/google/android/gms/internal/ed$1;
.super Lcom/google/android/gms/internal/ed$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ed;->loadFullPanoramaInfoAndGrantAccess(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ed$d",
        "<",
        "Lcom/google/android/gms/panorama/PanoramaApi$FullPanoramaResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic LA:Lcom/google/android/gms/internal/ed;

.field final synthetic Ly:Landroid/net/Uri;

.field final synthetic Lz:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ed;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ed$1;->LA:Lcom/google/android/gms/internal/ed;

    iput-object p2, p0, Lcom/google/android/gms/internal/ed$1;->Ly:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ed$1;->Lz:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ed$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected D(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$FullPanoramaResult;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ea;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ea;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;I)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/ec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ed$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ed$a;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ed$1;->Ly:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ed$1;->Lz:Landroid/os/Bundle;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/ed;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/eb;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ed$1;->D(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$FullPanoramaResult;

    move-result-object v0

    return-object v0
.end method
