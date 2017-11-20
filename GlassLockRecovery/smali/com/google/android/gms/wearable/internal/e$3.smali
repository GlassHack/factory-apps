.class Lcom/google/android/gms/wearable/internal/e$3;
.super Lcom/google/android/gms/wearable/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/e;->getConfigs(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/d",
        "<",
        "Lcom/google/android/gms/wearable/ConnectionApi$GetConfigsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic VW:Lcom/google/android/gms/wearable/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/e$3;->VW:Lcom/google/android/gms/wearable/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/wearable/internal/au;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/e$3;->a(Lcom/google/android/gms/wearable/internal/au;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/wearable/internal/au;->e(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method

.method protected ab(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/ConnectionApi$GetConfigsResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/e$b;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    return-object v0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/e$3;->ab(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/ConnectionApi$GetConfigsResult;

    move-result-object v0

    return-object v0
.end method
