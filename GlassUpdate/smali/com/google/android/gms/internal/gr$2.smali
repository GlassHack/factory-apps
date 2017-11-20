.class Lcom/google/android/gms/internal/gr$2;
.super Lcom/google/android/gms/usagereporting/UsageReporting$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gr;->setOptInOptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/usagereporting/UsageReporting$a",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Vp:Lcom/google/android/gms/internal/gr;

.field final synthetic Vq:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gr$2;->Vp:Lcom/google/android/gms/internal/gr;

    iput-object p2, p0, Lcom/google/android/gms/internal/gr$2;->Vq:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/UsageReporting$a;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/internal/gs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gr$2;->a(Lcom/google/android/gms/internal/gs;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gr$2;->Vq:Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/usagereporting/UsageReporting$a;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gr$2;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
