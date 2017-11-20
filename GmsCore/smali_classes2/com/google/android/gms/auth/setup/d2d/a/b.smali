.class public Lcom/google/android/gms/auth/setup/d2d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/bluetooth/BluetoothServerSocket;

.field private final c:Landroid/bluetooth/BluetoothSocket;

.field private final d:Ljava/io/DataInputStream;

.field private final e:Ljava/io/DataOutputStream;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/google/android/gms/auth/setup/d2d/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "D2D."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/setup/d2d/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothServerSocket;Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->b:Landroid/bluetooth/BluetoothServerSocket;

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->c:Landroid/bluetooth/BluetoothSocket;

    .line 39
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->d:Ljava/io/DataInputStream;

    .line 40
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->e:Ljava/io/DataOutputStream;

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->f:Ljava/util/concurrent/ExecutorService;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/io/DataInputStream;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->d:Ljava/io/DataInputStream;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/setup/d2d/a/b;)Lcom/google/android/gms/auth/setup/d2d/a/g;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->h:Lcom/google/android/gms/auth/setup/d2d/a/g;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/auth/setup/d2d/a/b;)Ljava/io/DataOutputStream;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->e:Ljava/io/DataOutputStream;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->c:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->b:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 112
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->b:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->h:Lcom/google/android/gms/auth/setup/d2d/a/g;

    invoke-interface {v0}, Lcom/google/android/gms/auth/setup/d2d/a/g;->a()V

    .line 120
    :cond_1
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 107
    :catch_2
    move-exception v0

    .line 108
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 113
    :catch_3
    move-exception v0

    .line 114
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/a/g;)V
    .locals 3

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->h:Lcom/google/android/gms/auth/setup/d2d/a/g;

    .line 47
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/setup/d2d/a/c;-><init>(Lcom/google/android/gms/auth/setup/d2d/a/b;)V

    .line 64
    sget-object v1, Lcom/google/android/gms/auth/setup/d2d/a/b;->a:Ljava/lang/String;

    const-string v2, "Connection listener thread starting."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method

.method public final a([B)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/a/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/setup/d2d/a/d;-><init>(Lcom/google/android/gms/auth/setup/d2d/a/b;[B)V

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/a/b;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
