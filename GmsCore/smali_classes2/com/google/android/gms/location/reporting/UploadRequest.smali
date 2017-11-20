.class public Lcom/google/android/gms/location/reporting/UploadRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/h;


# instance fields
.field private final a:I

.field private final b:Landroid/accounts/Account;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/location/reporting/h;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/UploadRequest;->CREATOR:Lcom/google/android/gms/location/reporting/h;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->a:I

    .line 81
    iput-object p2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->b:Landroid/accounts/Account;

    .line 82
    iput-object p3, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->c:Ljava/lang/String;

    .line 83
    iput-wide p4, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->d:J

    .line 84
    iput-wide p6, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->e:J

    .line 85
    iput-wide p8, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->f:J

    .line 86
    iput-object p10, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->g:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->a:I

    return v0
.end method

.method public final b()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->b:Landroid/accounts/Account;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->d:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequest;->CREATOR:Lcom/google/android/gms/location/reporting/h;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->e:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    if-ne p0, p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/reporting/UploadRequest;

    if-nez v2, :cond_2

    move v0, v1

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/reporting/UploadRequest;

    .line 175
    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->b:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->b:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->f:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/reporting/UploadRequest;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->f:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->b:Landroid/accounts/Account;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UploadRequest{mVersionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->b:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMovingLatencyMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStationaryLatencyMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppSpecificKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/UploadRequest;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    .prologue
    .line 196
    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequest;->CREATOR:Lcom/google/android/gms/location/reporting/h;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/h;->a(Lcom/google/android/gms/location/reporting/UploadRequest;Landroid/os/Parcel;I)V

    .line 197
    return-void
.end method
