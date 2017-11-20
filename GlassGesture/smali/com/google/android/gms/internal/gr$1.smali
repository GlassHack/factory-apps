.class Lcom/google/android/gms/internal/gr$1;
.super Lcom/google/android/gms/usagereporting/UsageReporting$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gr;->getOptInOptions(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/usagereporting/UsageReporting$a",
        "<",
        "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Vp:Lcom/google/android/gms/internal/gr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gr$1;->Vp:Lcom/google/android/gms/internal/gr;

    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/UsageReporting$a;-><init>()V

    return-void
.end method


# virtual methods
.method public Z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/gr$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/gs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gr$1;->a(Lcom/google/android/gms/internal/gs;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gr$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/gr$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gr$1;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/usagereporting/UsageReporting$a;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gr$1;->Z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsResult;

    move-result-object v0

    return-object v0
.end method
