.class public Lcom/google/android/gms/internal/gr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/usagereporting/UsageReportingApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gr$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptInOptions(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gr$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gr$1;-><init>(Lcom/google/android/gms/internal/gr;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public setOptInOptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "optInOptions"    # Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gr$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gr$2;-><init>(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public setOptInOptionsChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gr$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/gr$3;-><init>(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/usagereporting/UsageReportingApi$OptInOptionsChangedListener;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
