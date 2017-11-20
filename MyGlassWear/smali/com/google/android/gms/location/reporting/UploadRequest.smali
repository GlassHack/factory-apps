.class public Lcom/google/android/gms/location/reporting/UploadRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/reporting/UploadRequest$1;,
        Lcom/google/android/gms/location/reporting/UploadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/e;


# instance fields
.field private final IM:Landroid/accounts/Account;

.field private final IX:Ljava/lang/String;

.field private final IY:J

.field private final IZ:J

.field private final Ja:J

.field private final Jb:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/UploadRequest;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "durationMillis"    # J
    .param p6, "movingLatencyMillis"    # J
    .param p8, "stationaryLatencyMillis"    # J
    .param p10, "appSpecificKey"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IM:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IX:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IY:J

    iput-wide p6, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IZ:J

    iput-wide p8, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Ja:J

    iput-object p10, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Jb:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/android/gms/location/reporting/UploadRequest$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->mVersionCode:I

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->a(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IM:Landroid/accounts/Account;

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->b(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IX:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->c(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IY:J

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->d(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IZ:J

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->e(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Ja:J

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;->f(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Jb:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;Lcom/google/android/gms/location/reporting/UploadRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/location/reporting/UploadRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/location/reporting/UploadRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/location/reporting/UploadRequest;-><init>(Lcom/google/android/gms/location/reporting/UploadRequest$Builder;)V

    return-void
.end method

.method public static builder(Landroid/accounts/Account;Ljava/lang/String;J)Lcom/google/android/gms/location/reporting/UploadRequest$Builder;
    .locals 6
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "durationMillis"    # J

    .prologue
    new-instance v0, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/reporting/UploadRequest$Builder;-><init>(Landroid/accounts/Account;Ljava/lang/String;JLcom/google/android/gms/location/reporting/UploadRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequest;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/reporting/UploadRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/reporting/UploadRequest;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IM:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->IM:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IX:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->IX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IY:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->IY:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IZ:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->IZ:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Ja:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->Ja:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Jb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->Jb:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/k;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IM:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAppSpecificKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Jb:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IY:J

    return-wide v0
.end method

.method public getMovingLatencyMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IZ:J

    return-wide v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IX:Ljava/lang/String;

    return-object v0
.end method

.method public getStationaryLatencyMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Ja:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IM:Landroid/accounts/Account;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IX:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IY:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Ja:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Jb:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadRequest{mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IM:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/gms/internal/dx;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IY:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMovingLatencyMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->IZ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStationaryLatencyMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Ja:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppSpecificKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->Jb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequest;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/e;->a(Lcom/google/android/gms/location/reporting/UploadRequest;Landroid/os/Parcel;I)V

    return-void
.end method
