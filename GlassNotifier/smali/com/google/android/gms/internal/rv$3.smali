.class Lcom/google/android/gms/internal/rv$3;
.super Lcom/google/android/gms/internal/rv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rv;->loadRemoteImage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGr:Lcom/google/android/gms/internal/rv;

.field final synthetic xA:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/rv$3;->aGr:Lcom/google/android/gms/internal/rv;

    iput-object p3, p0, Lcom/google/android/gms/internal/rv$3;->xA:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/rv$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/rv$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/rb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rv$3;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rv$3;->xA:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/rb;->s(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/rv$3;->setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V

    return-void
.end method
