.class public Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/fitness/data/BleDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/gms/fitness/request/a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->a:I

    .line 42
    iput-object p2, p0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->c:Lcom/google/android/gms/fitness/data/BleDevice;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/fitness/data/BleDevice;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->c:Lcom/google/android/gms/fitness/data/BleDevice;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    const-string v0, "ClaimBleDeviceRequest{%s %s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;->c:Lcom/google/android/gms/fitness/data/BleDevice;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/a;->a(Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;Landroid/os/Parcel;I)V

    .line 83
    return-void
.end method
