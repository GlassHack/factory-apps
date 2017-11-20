.class public Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field private volatile b:Ljava/util/concurrent/atomic/AtomicReference;

.field private volatile c:Lcom/google/android/gms/wearable/node/bluetooth/g;

.field private d:Lcom/google/android/gms/wearable/node/bluetooth/e;

.field private e:Lcom/google/android/gms/wearable/node/bluetooth/f;

.field private f:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 319
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 115
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "WearableBluetooth"

    const-string v1, "maybeStartConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "WearableBluetooth"

    const-string v1, "  already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    .line 126
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "WearableBluetooth"

    const-string v1, "  bluetooth adapter not on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_3
    new-instance v0, Lcom/google/android/gms/wearable/node/bluetooth/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;-><init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->f:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "WearableBluetooth"

    const-string v1, "Interrupting bluetooth thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a()V

    .line 142
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "WearableBluetooth"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WearableBluetooth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBluetoothAdapterStateChanged state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->b()V

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "First started: %s"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothThread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shutdown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v0, "---- bt connection health ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/io/PrintWriter;)V

    .line 106
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "WearableBluetooth"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "setScanMode"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/y;->a(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/node/bluetooth/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    .line 65
    new-instance v0, Lcom/google/android/gms/wearable/node/bluetooth/f;

    invoke-direct {v0, p0, v5}, Lcom/google/android/gms/wearable/node/bluetooth/f;-><init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;B)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->e:Lcom/google/android/gms/wearable/node/bluetooth/f;

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->e:Lcom/google/android/gms/wearable/node/bluetooth/f;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->e:Lcom/google/android/gms/wearable/node/bluetooth/f;

    invoke-static {}, Lcom/google/android/gms/wearable/node/bluetooth/f;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void

    .line 58
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->f:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "WearableBluetooth"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->e:Lcom/google/android/gms/wearable/node/bluetooth/f;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->b()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->d:Lcom/google/android/gms/wearable/node/bluetooth/e;

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 79
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 88
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "WearableBluetooth"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a()V

    .line 92
    const/4 v0, 0x1

    return v0
.end method
