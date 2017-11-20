.class public Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/gms/auth/testability/android/bluetooth/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a:Landroid/bluetooth/BluetoothDevice;

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;)Lcom/google/android/gms/auth/testability/android/bluetooth/g;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->b(Z)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/h;->a(Landroid/bluetooth/BluetoothSocket;)Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-ne p0, p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    iget-object v3, p1, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    return-void
.end method
