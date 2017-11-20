.class Lcom/google/android/gms/internal/gs$1;
.super Lcom/google/android/gms/internal/gs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/usagereporting/UsageReporting$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

.field final synthetic Vw:Lcom/google/android/gms/internal/gs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/usagereporting/UsageReporting$a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gs$1;->Vw:Lcom/google/android/gms/internal/gs;

    iput-object p2, p0, Lcom/google/android/gms/internal/gs$1;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gs$a;-><init>(Lcom/google/android/gms/internal/gs$1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$1;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/usagereporting/UsageReporting$a;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gs$1;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/usagereporting/UsageReporting$a;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    goto :goto_0
.end method
