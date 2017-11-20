.class Lcom/google/android/gms/internal/dz$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/reporting/Reporting$ReportingStateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final Jj:Lcom/google/android/gms/location/reporting/ReportingState;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/reporting/ReportingState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dz$a;->px:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    return-void
.end method


# virtual methods
.method public getDeviceTag()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->getDeviceTag()I

    move-result v0

    return v0
.end method

.method public getExpectedOptInStatusCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->getExpectedOptInResult()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dz;->di(I)I

    move-result v0

    return v0
.end method

.method public getHistoryEnabledSetting()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->getHistoryEnabled()I

    move-result v0

    return v0
.end method

.method public getReportingEnabledSetting()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->getReportingEnabled()I

    move-result v0

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->isActive()Z

    move-result v0

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->isAllowed()Z

    move-result v0

    return v0
.end method

.method public isDeferringToMaps()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->isDeferringToMaps()Z

    move-result v0

    return v0
.end method

.method public isOptedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->isOptedIn()Z

    move-result v0

    return v0
.end method

.method public shouldOptInInsistent()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->shouldOptInInsistent()Z

    move-result v0

    return v0
.end method

.method public shouldOptInLenient()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$a;->Jj:Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/ReportingState;->shouldOptInLenient()Z

    move-result v0

    return v0
.end method
