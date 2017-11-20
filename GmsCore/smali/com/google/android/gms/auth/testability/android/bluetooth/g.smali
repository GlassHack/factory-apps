.class public final Lcom/google/android/gms/auth/testability/android/bluetooth/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

    .line 51
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 66
    return-void
.end method

.method public final b()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 59
    return-void
.end method

.method public final d()Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

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

    .line 70
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

    check-cast p1, Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    iget-object v3, p1, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

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
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
