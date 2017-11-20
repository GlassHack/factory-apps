.class public final Lcom/google/android/gms/auth/testability/android/bluetooth/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 160
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/d;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    if-ne p0, p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    check-cast p1, Lcom/google/android/gms/auth/testability/android/bluetooth/a;

    iget-object v3, p1, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
