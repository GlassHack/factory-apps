.class public Lcom/google/android/gms/location/reporting/ReportingState;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/reporting/ReportingState$Setting;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/d;


# instance fields
.field private final IQ:I

.field private final IR:I

.field private final IS:Z

.field private final IT:Z

.field private final IU:Z

.field private final IV:I

.field private final IW:Ljava/lang/Integer;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/d;

    return-void
.end method

.method public constructor <init>(IIIZZZILjava/lang/Integer;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "reportingEnabled"    # I
    .param p3, "historyEnabled"    # I
    .param p4, "allowed"    # Z
    .param p5, "active"    # Z
    .param p6, "deferToMaps"    # Z
    .param p7, "expectedOptInResult"    # I
    .param p8, "deviceTag"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    iput p3, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    iput-boolean p4, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IS:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IT:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IU:Z

    iput p7, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IV:I

    iput-object p8, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IW:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IIZZZILjava/lang/Integer;)V
    .locals 9
    .param p1, "reportingEnabled"    # I
    .param p2, "historyEnabled"    # I
    .param p3, "allowed"    # Z
    .param p4, "active"    # Z
    .param p5, "deferToMaps"    # Z
    .param p6, "expectedOptInResult"    # I
    .param p7, "deviceTag"    # Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/location/reporting/ReportingState;-><init>(IIIZZZILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/d;

    const/4 v0, 0x0

    return v0
.end method

.method eU()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IW:Ljava/lang/Integer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/reporting/ReportingState;

    if-nez v1, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/ReportingState;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IS:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->IS:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IT:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->IT:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IU:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->IU:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IV:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->IV:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IW:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->IW:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDeviceTag()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IW:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Device tag restricted to approved apps"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IW:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpectedOptInResult()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IV:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/OptInResult;->sanitize(I)I

    move-result v0

    return v0
.end method

.method public getHistoryEnabled()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/ReportingState$Setting;->sanitize(I)I

    move-result v0

    return v0
.end method

.method public getReportingEnabled()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/ReportingState$Setting;->sanitize(I)I

    move-result v0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IS:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IT:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IU:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IW:Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IT:Z

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IS:Z

    return v0
.end method

.method public isAmbiguous()Z
    .locals 2

    const/4 v1, -0x2

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeferringToMaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IU:Z

    return v0
.end method

.method public isOptedIn()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/ReportingState$Setting;->isOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/ReportingState$Setting;->isOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOptIn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->shouldOptInInsistent()Z

    move-result v0

    return v0
.end method

.method public shouldOptInInsistent()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->isOptedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->getExpectedOptInResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOptInLenient()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/ReportingState$Setting;->isOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/ReportingState$Setting;->isOff(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->getExpectedOptInResult()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportingState{mReportingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpectedOptInResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->IW:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/internal/dx;->b(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Lcom/google/android/gms/location/reporting/d;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/d;->a(Lcom/google/android/gms/location/reporting/ReportingState;Landroid/os/Parcel;I)V

    return-void
.end method
