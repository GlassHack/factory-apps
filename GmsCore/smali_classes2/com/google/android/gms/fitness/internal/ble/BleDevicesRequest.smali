.class public Lcom/google/android/gms/fitness/internal/ble/BleDevicesRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/gms/fitness/internal/ble/a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/internal/ble/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/internal/ble/BleDevicesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/internal/ble/BleDevicesRequest;->a:I

    .line 33
    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/android/gms/fitness/internal/ble/BleDevicesRequest;->a:I

    .line 29
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/gms/fitness/internal/ble/BleDevicesRequest;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "BleDevicesRequest{}"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/internal/ble/a;->a(Lcom/google/android/gms/fitness/internal/ble/BleDevicesRequest;Landroid/os/Parcel;)V

    .line 69
    return-void
.end method
