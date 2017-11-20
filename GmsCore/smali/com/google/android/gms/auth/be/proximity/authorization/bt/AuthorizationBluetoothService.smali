.class public Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;
.super Landroid/app/IntentService;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/as;


# static fields
.field public static final a:Ljava/util/UUID;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field private d:Lcom/google/android/gms/auth/trustagent/ar;

.field private e:Lcom/google/android/gms/auth/be/proximity/authorization/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    .line 39
    const-string v0, "0000AB34-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->a:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->c:Ljava/util/concurrent/Executor;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;)Lcom/google/android/gms/auth/be/proximity/authorization/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/bt/a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/a;-><init>(Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 60
    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/authorization/a;->a()Lcom/google/android/gms/auth/be/proximity/authorization/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    .line 62
    invoke-static {p0}, Lcom/google/android/gms/auth/trustagent/ar;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/trustagent/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->d:Lcom/google/android/gms/auth/trustagent/ar;

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->d:Lcom/google/android/gms/auth/trustagent/ar;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/trustagent/ar;->a(Lcom/google/android/gms/auth/trustagent/as;)V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->d:Lcom/google/android/gms/auth/trustagent/ar;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/trustagent/ar;->b(Lcom/google/android/gms/auth/trustagent/as;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->d:Lcom/google/android/gms/auth/trustagent/ar;

    .line 72
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v3, "Received onHandleIntent() call: %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/google/android/gms/auth/testability/android/bluetooth/b;->a()Lcom/google/android/gms/auth/testability/android/bluetooth/a;

    move-result-object v2

    .line 79
    if-nez v2, :cond_0

    .line 80
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v1, "Bluetooth is not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v3, v2, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v1, "Bluetooth is not enabled on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_1
    :try_start_0
    const-string v3, "Easy Unlock"

    sget-object v4, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->a:Ljava/util/UUID;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/google/c/a/ah;->b(Z)V

    iget-object v0, v2, Lcom/google/android/gms/auth/testability/android/bluetooth/a;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/f;->a(Landroid/bluetooth/BluetoothServerSocket;)Lcom/google/android/gms/auth/testability/android/bluetooth/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 102
    :goto_2
    :try_start_1
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v2, "Starts to wait for incoming bluetooth connections."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/e;->a()Lcom/google/android/gms/auth/testability/android/bluetooth/g;

    move-result-object v0

    .line 104
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v3, "Received bluetooth connection from %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->d()Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;

    iget-object v4, p0, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->e:Lcom/google/android/gms/auth/be/proximity/authorization/a;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/testability/android/bluetooth/g;->d()Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/bt/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/proximity/authorization/a;Lcom/google/android/gms/auth/testability/android/bluetooth/BluetoothDevice;Lcom/google/android/gms/auth/testability/android/bluetooth/g;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_2
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v3, "Failed to accept the connection."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/e;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v2, "Failed to close the bluetooth server socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 93
    goto :goto_1

    .line 95
    :catch_2
    move-exception v0

    .line 96
    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v2, "Failed to create insecure RFCOMM server socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/auth/testability/android/bluetooth/e;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 115
    :goto_3
    throw v0

    .line 113
    :catch_3
    move-exception v1

    .line 114
    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/bt/AuthorizationBluetoothService;->b:Ljava/lang/String;

    const-string v3, "Failed to close the bluetooth server socket."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
