.class public abstract Lcom/google/android/gms/auth/setup/d2d/a/f;
.super Lcom/google/android/gms/auth/setup/d2d/a/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/bluetooth/BluetoothAdapter;

.field private final c:Ljava/util/UUID;

.field private final d:Ljava/lang/String;

.field private e:Landroid/bluetooth/BluetoothSocket;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "D2D."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/setup/d2d/a/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/setup/d2d/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/a/a;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->f:Z

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->c:Ljava/util/UUID;

    .line 35
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->d:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->f:Z

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->e:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->e:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->c:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->e:Landroid/bluetooth/BluetoothSocket;

    .line 44
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/a/f;->a:Ljava/lang/String;

    const-string v1, "Creating Bluetooth connection...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->e:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 46
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/a/f;->a:Ljava/lang/String;

    const-string v1, "Created Bluetooth connection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->f:Z

    .line 48
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/a/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/a/f;->e:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/setup/d2d/a/b;-><init>(Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothSocket;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/a/f;->a(Lcom/google/android/gms/auth/setup/d2d/a/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/f;->a:Ljava/lang/String;

    const-string v2, "Failed to create Bluetooth connection."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/a/f;->b()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/a/f;->a()V

    goto :goto_0
.end method
