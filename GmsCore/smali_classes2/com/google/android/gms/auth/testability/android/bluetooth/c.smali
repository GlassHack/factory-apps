.class final Lcom/google/android/gms/auth/testability/android/bluetooth/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/d;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    new-array v0, p1, [Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    return-object v0
.end method
