.class Lcom/google/android/gms/internal/gs$3;
.super Lcom/google/android/gms/internal/gs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;Lcom/google/android/gms/usagereporting/UsageReporting$a;Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vs:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

.field final synthetic Vw:Lcom/google/android/gms/internal/gs;

.field final synthetic Vx:Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/usagereporting/UsageReporting$a;Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gs$3;->Vw:Lcom/google/android/gms/internal/gs;

    iput-object p2, p0, Lcom/google/android/gms/internal/gs$3;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/gs$3;->Vx:Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/gs$3;->Vs:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gs$a;-><init>(Lcom/google/android/gms/internal/gs$1;)V

    return-void
.end method


# virtual methods
.method public X(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vw:Lcom/google/android/gms/internal/gs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/gs$b;)Lcom/google/android/gms/internal/gs$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/usagereporting/UsageReporting$a;->b(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/usagereporting/UsageReporting$a;->b(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

.method public Y(Lcom/google/android/gms/common/api/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vw:Lcom/google/android/gms/internal/gs;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/gs$b;)Lcom/google/android/gms/internal/gs$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/usagereporting/UsageReporting$a;->b(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vx:Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vw:Lcom/google/android/gms/internal/gs;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/gs$b;)Lcom/google/android/gms/internal/gs$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/usagereporting/UsageReporting$a;->b(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vw:Lcom/google/android/gms/internal/gs;

    new-instance v1, Lcom/google/android/gms/internal/gs$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/gs$3;->Vs:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, p0, Lcom/google/android/gms/internal/gs$3;->Vx:Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Ljava/lang/Object;)Lcom/google/android/gms/common/api/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gs$b;-><init>(Lcom/google/android/gms/common/api/b;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/gs$b;)Lcom/google/android/gms/internal/gs$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$3;->Vw:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gs;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gq;

    iget-object v1, p0, Lcom/google/android/gms/internal/gs$3;->Vw:Lcom/google/android/gms/internal/gs;

    invoke-static {v1}, Lcom/google/android/gms/internal/gs;->b(Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/gs$b;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/gq;->a(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/go;)V

    goto :goto_0
.end method
