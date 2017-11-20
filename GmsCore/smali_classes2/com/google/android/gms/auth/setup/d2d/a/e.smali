.class public abstract Lcom/google/android/gms/auth/setup/d2d/a/e;
.super Lcom/google/android/gms/auth/setup/d2d/a/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/bluetooth/BluetoothAdapter;

.field private final c:Ljava/util/UUID;

.field private final d:Ljava/lang/String;

.field private e:Landroid/bluetooth/BluetoothServerSocket;

.field private f:Landroid/bluetooth/BluetoothSocket;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "D2D."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/setup/d2d/a/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/setup/d2d/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/auth/setup/d2d/a/a;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->g:Z

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->c:Ljava/util/UUID;

    .line 37
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->d:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->g:Z

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->f:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->f:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->f:Landroid/bluetooth/BluetoothSocket;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->e:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->e:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->e:Landroid/bluetooth/BluetoothServerSocket;

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/e;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 74
    :catch_1
    move-exception v0

    .line 75
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/e;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->c:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->e:Landroid/bluetooth/BluetoothServerSocket;

    .line 47
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/a/e;->a:Ljava/lang/String;

    const-string v1, "Accepting Bluetooth connection..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->e:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->f:Landroid/bluetooth/BluetoothSocket;

    .line 49
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/a/e;->a:Ljava/lang/String;

    const-string v1, "Accepted Bluetooth connection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->g:Z

    .line 51
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/a/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->e:Landroid/bluetooth/BluetoothServerSocket;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/a/e;->f:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/setup/d2d/a/b;-><init>(Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothSocket;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/a/e;->a(Lcom/google/android/gms/auth/setup/d2d/a/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/e;->a:Ljava/lang/String;

    const-string v2, "Failed to accept Bluetooth connection."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/a/e;->b()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/auth/setup/d2d/a/e;->a()V

    goto :goto_0
.end method
