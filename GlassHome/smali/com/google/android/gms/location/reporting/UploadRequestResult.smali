.class public final Lcom/google/android/gms/location/reporting/UploadRequestResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CALLER_NOT_AUTHORIZED:I = 0x4

.field public static final CREATOR:Lcom/google/android/gms/location/reporting/f;

.field public static final DURATION_TOO_LONG:I = 0x2

.field public static final EXPIRATION_TOO_LATE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FAILURE_REQUEST_ID:J = -0x1L

.field public static final ID_NOT_FOUND:I = 0x64

.field public static final REPORTING_NOT_ACTIVE:I = 0x3

.field public static final SUCCESS:I


# instance fields
.field private final Je:I

.field private final mVersionCode:I

.field private final vh:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/f;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/f;

    return-void
.end method

.method constructor <init>(IIJ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "requestId"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Je:I

    iput-wide p3, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->vh:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "requestId"    # J

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/location/reporting/UploadRequestResult;-><init>(IIJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/f;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    if-nez v1, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->vh:J

    iget-wide v3, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;->vh:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Je:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Je:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->vh:J

    return-wide v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Je:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Je:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->vh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Je:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->vh:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/f;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/f;->a(Lcom/google/android/gms/location/reporting/UploadRequestResult;Landroid/os/Parcel;I)V

    return-void
.end method
