.class Lcom/google/android/gms/internal/ed$2;
.super Lcom/google/android/gms/internal/ed$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ed;->loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LA:Lcom/google/android/gms/internal/ed;

.field final synthetic Ly:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ed;Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ed$2;->LA:Lcom/google/android/gms/internal/ed;

    iput-object p2, p0, Lcom/google/android/gms/internal/ed$2;->Ly:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ed$b;-><init>(Lcom/google/android/gms/internal/ed$1;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/ec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ed$c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ed$c;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ed$2;->Ly:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/eb;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method
