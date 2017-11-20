.class Lcom/google/android/gms/internal/gr$3;
.super Lcom/google/android/gms/usagereporting/UsageReporting$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gr;->setOptInOptionsChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;)Lcom/google/android/gms/common/api/PendingResult;
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

.field final synthetic Vr:Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;

.field final synthetic Vs:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gr$3;->Vp:Lcom/google/android/gms/internal/gr;

    iput-object p2, p0, Lcom/google/android/gms/internal/gr$3;->Vr:Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/gr$3;->Vs:Lcom/google/android/gms/common/api/GoogleApiClient;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gr$3;->a(Lcom/google/android/gms/internal/gs;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gr$3;->Vr:Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/gr$3;->Vs:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1, v0, p0, v1}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;Lcom/google/android/gms/usagereporting/UsageReporting$a;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gr$3;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
