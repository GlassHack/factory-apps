.class public final Lcom/google/android/gms/location/reporting/UploadRequestResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/i;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/location/reporting/i;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/i;

    return-void
.end method

.method constructor <init>(IIJ)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->a:I

    .line 85
    iput p2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->b:I

    .line 86
    iput-wide p3, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->c:J

    .line 87
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/location/reporting/UploadRequestResult;-><init>(IIJ)V

    .line 91
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->b:I

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->c:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/i;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 119
    instance-of v1, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    .line 123
    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->b:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result{mVersionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/i;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/reporting/i;->a(Lcom/google/android/gms/location/reporting/UploadRequestResult;Landroid/os/Parcel;)V

    .line 139
    return-void
.end method
