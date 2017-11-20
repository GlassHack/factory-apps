.class public interface abstract Lcom/google/android/gms/location/reporting/Reporting$ReportingStateResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/reporting/Reporting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReportingStateResult"
.end annotation


# virtual methods
.method public abstract getDeviceTag()I
.end method

.method public abstract getExpectedOptInStatusCode()I
.end method

.method public abstract getHistoryEnabledSetting()I
.end method

.method public abstract getReportingEnabledSetting()I
.end method

.method public abstract isActive()Z
.end method

.method public abstract isAllowed()Z
.end method

.method public abstract isDeferringToMaps()Z
.end method

.method public abstract isOptedIn()Z
.end method

.method public abstract shouldOptInInsistent()Z
.end method

.method public abstract shouldOptInLenient()Z
.end method
