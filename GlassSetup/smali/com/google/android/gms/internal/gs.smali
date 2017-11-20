.class public Lcom/google/android/gms/internal/gs;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gs$a;,
        Lcom/google/android/gms/internal/gs$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/gq;",
        ">;"
    }
.end annotation


# instance fields
.field private Vu:Lcom/google/android/gms/internal/gs$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v5, v6

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/gs$b;)Lcom/google/android/gms/internal/gs$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/gs$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    return-object v0
.end method

.method public static isUsageReportingServiceAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.usagereporting.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/i;->t(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/usagereporting/UsageReporting$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/usagereporting/UsageReporting$a",
            "<",
            "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gs;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gq;

    new-instance v1, Lcom/google/android/gms/internal/gs$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gs$1;-><init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/usagereporting/UsageReporting$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gq;->a(Lcom/google/android/gms/internal/go;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;Lcom/google/android/gms/usagereporting/UsageReporting$a;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;",
            "Lcom/google/android/gms/usagereporting/UsageReporting$a",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/gs$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/internal/gs$3;-><init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/usagereporting/UsageReporting$a;Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gs;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gq;

    iget-object v2, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/gq;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/go;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/usagereporting/UsageReporting$a;->b(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/gs$b;

    invoke-interface {p3, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Ljava/lang/Object;)Lcom/google/android/gms/common/api/b;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/gs$b;-><init>(Lcom/google/android/gms/common/api/b;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gs;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gq;

    iget-object v2, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/gq;->a(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/go;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/usagereporting/UsageReporting$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;",
            "Lcom/google/android/gms/usagereporting/UsageReporting$a",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gs;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gq;

    new-instance v1, Lcom/google/android/gms/internal/gs$2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/gs$2;-><init>(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/usagereporting/UsageReporting$a;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/gq;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/internal/go;)V

    return-void
.end method

.method protected bh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gq;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/gq$a;->bg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gq;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/gs$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gs$4;-><init>(Lcom/google/android/gms/internal/gs;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gs;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gq;

    iget-object v2, p0, Lcom/google/android/gms/internal/gs;->Vu:Lcom/google/android/gms/internal/gs$b;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/gq;->b(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/go;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "UsageReportingClientImpl"

    const-string v2, "disconnect(): Could not unregister listener from remote:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.usagereporting.service.START"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gs;->bh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gq;

    move-result-object v0

    return-object v0
.end method
