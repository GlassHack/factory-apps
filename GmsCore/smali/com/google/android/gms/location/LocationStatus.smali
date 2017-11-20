.class public Lcom/google/android/gms/location/LocationStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/q;


# instance fields
.field a:I

.field b:I

.field c:J

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/gms/location/q;

    invoke-direct {v0}, Lcom/google/android/gms/location/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationStatus;->CREATOR:Lcom/google/android/gms/location/q;

    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/google/android/gms/location/LocationStatus;->d:I

    .line 94
    iput p2, p0, Lcom/google/android/gms/location/LocationStatus;->a:I

    .line 95
    iput p3, p0, Lcom/google/android/gms/location/LocationStatus;->b:I

    .line 96
    iput-wide p4, p0, Lcom/google/android/gms/location/LocationStatus;->c:J

    .line 97
    return-void
.end method

.method public static a(IIJ)Lcom/google/android/gms/location/LocationStatus;
    .locals 6

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/gms/location/LocationStatus;

    const/4 v1, 0x1

    move v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/LocationStatus;-><init>(IIIJ)V

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    packed-switch p0, :pswitch_data_0

    .line 193
    :pswitch_0
    const-string v0, "STATUS_UNKNOWN"

    :goto_0
    return-object v0

    .line 177
    :pswitch_1
    const-string v0, "STATUS_SUCCESSFUL"

    goto :goto_0

    .line 179
    :pswitch_2
    const-string v0, "STATUS_TIMED_OUT_ON_SCAN"

    goto :goto_0

    .line 181
    :pswitch_3
    const-string v0, "STATUS_NO_INFO_IN_DATABASE"

    goto :goto_0

    .line 183
    :pswitch_4
    const-string v0, "STATUS_INVALID_SCAN"

    goto :goto_0

    .line 185
    :pswitch_5
    const-string v0, "STATUS_UNABLE_TO_QUERY_DATABASE"

    goto :goto_0

    .line 187
    :pswitch_6
    const-string v0, "STATUS_SCANS_DISABLED_IN_SETTINGS"

    goto :goto_0

    .line 189
    :pswitch_7
    const-string v0, "STATUS_LOCATION_DISABLED_IN_SETTINGS"

    goto :goto_0

    .line 191
    :pswitch_8
    const-string v0, "STATUS_IN_PROGRESS"

    goto :goto_0

    .line 175
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
.method public final a()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->b:I

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationStatus;->c:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->b:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method final e()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/gms/location/LocationStatus;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 153
    instance-of v1, p1, Lcom/google/android/gms/location/LocationStatus;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/LocationStatus;

    .line 158
    iget v1, p0, Lcom/google/android/gms/location/LocationStatus;->a:I

    iget v2, p1, Lcom/google/android/gms/location/LocationStatus;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/LocationStatus;->b:I

    iget v2, p1, Lcom/google/android/gms/location/LocationStatus;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationStatus;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationStatus;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationStatus;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string v1, "LocationStatus[cell status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->a:I

    invoke-static {v2}, Lcom/google/android/gms/location/LocationStatus;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", wifi status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationStatus;->b:I

    invoke-static {v2}, Lcom/google/android/gms/location/LocationStatus;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", elapsed realtime ns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationStatus;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/google/android/gms/location/q;->a(Lcom/google/android/gms/location/LocationStatus;Landroid/os/Parcel;)V

    .line 137
    return-void
.end method
