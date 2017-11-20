.class final Lcom/google/android/location/collectionlib/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/location/collectionlib/SensorScannerConfig;

    invoke-direct {v0, p1}, Lcom/google/android/location/collectionlib/SensorScannerConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    new-array v0, p1, [Lcom/google/android/location/collectionlib/SensorScannerConfig;

    return-object v0
.end method
