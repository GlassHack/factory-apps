.class Lcom/google/android/gms/internal/gs$2;
.super Lcom/google/android/gms/internal/gs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/usagereporting/UsageReporting$a;)V
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

    iput-object p1, p0, Lcom/google/android/gms/internal/gs$2;->Vw:Lcom/google/android/gms/internal/gs;

    iput-object p2, p0, Lcom/google/android/gms/internal/gs$2;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gs$a;-><init>(Lcom/google/android/gms/internal/gs$1;)V

    return-void
.end method


# virtual methods
.method public W(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gs$2;->Vv:Lcom/google/android/gms/usagereporting/UsageReporting$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/usagereporting/UsageReporting$a;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
