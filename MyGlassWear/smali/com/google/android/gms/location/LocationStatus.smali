.class public Lcom/google/android/gms/location/LocationStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/c;

.field public static final STATUS_INVALID_SCAN:I = 0x4

.field public static final STATUS_IN_PROGRESS:I = 0x8

.field public static final STATUS_LOCATION_DISABLED_IN_SETTINGS:I = 0x7

.field public static final STATUS_NO_INFO_IN_DATABASE:I = 0x3

.field public static final STATUS_SCANS_DISABLED_IN_SETTINGS:I = 0x6

.field public static final STATUS_SUCCESSFUL:I = 0x0

.field public static final STATUS_TIMED_OUT_ON_SCAN:I = 0x2

.field public static final STATUS_UNABLE_TO_QUERY_DATABASE:I = 0x5

.field public static final STATUS_UNKNOWN:I = 0x1


# instance fields
.field Gl:I

.field Gm:I

.field Gn:J

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationStatus;->CREATOR:Lcom/google/android/gms/location/c;

    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "cellStatus"    # I
    .param p3, "wifiStatus"    # I
    .param p4, "elapsedRealtimeNs"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationStatus;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/LocationStatus;->Gl:I

    iput p3, p0, Lcom/google/android/gms/location/LocationStatus;->Gm:I

    iput-wide p4, p0, Lcom/google/android/gms/location/LocationStatus;->Gn:J

    return-void
.end method

.method public static create(IIJ)Lcom/google/android/gms/location/LocationStatus;
    .locals 6
    .param p0, "cellStatus"    # I
    .param p1, "wifiStatus"    # I
    .param p2, "elapsedRealtimeNs"    # J

    .prologue
    new-instance v0, Lcom/google/android/gms/location/LocationStatus;

    const/4 v1, 0x1

    move v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/LocationStatus;-><init>(IIIJ)V

    return-object v0
.end method

.method private cy(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "STATUS_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "STATUS_SUCCESSFUL"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATUS_TIMED_OUT_ON_SCAN"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATUS_NO_INFO_IN_DATABASE"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATUS_INVALID_SCAN"

    goto :goto_0

    :pswitch_5
    const-string v0, "STATUS_UNABLE_TO_QUERY_DATABASE"

    goto :goto_0

    :pswitch_6
    const-string v0, "STATUS_SCANS_DISABLED_IN_SETTINGS"

    goto :goto_0

    :pswitch_7
    const-string v0, "STATUS_LOCATION_DISABLED_IN_SETTINGS"

    goto :goto_0

    :pswitch_8
    const-string v0, "STATUS_IN_PROGRESS"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/LocationStatus;

    if-nez v1, :cond_1

    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/LocationStatus;

    .end local p1    # "other":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/location/LocationStatus;->Gl:I

    iget v2, p1, Lcom/google/android/gms/location/LocationStatus;->Gl:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/LocationStatus;->Gm:I

    iget v2, p1, Lcom/google/android/gms/location/LocationStatus;->Gm:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationStatus;->Gn:J

    iget-wide v3, p1, Lcom/google/android/gms/location/LocationStatus;->Gn:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCellStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->Gl:I

    return v0
.end method

.method public getElapsedRealtimeNs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationStatus;->Gn:J

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->mVersionCode:I

    return v0
.end method

.method public getWifiStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->Gm:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->Gl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->Gm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationStatus;->Gn:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->Gl:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->Gm:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationStatus[cell status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->Gl:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/location/LocationStatus;->cy(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->Gm:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/location/LocationStatus;->cy(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", elapsed realtime ns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationStatus;->Gn:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/location/LocationStatus;Landroid/os/Parcel;I)V

    return-void
.end method
