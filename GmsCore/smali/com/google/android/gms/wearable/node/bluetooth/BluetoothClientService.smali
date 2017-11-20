.class public Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field private volatile b:Ljava/util/concurrent/atomic/AtomicReference;

.field private c:Lcom/google/android/gms/wearable/node/bluetooth/c;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private g:Landroid/os/PowerManager$WakeLock;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->e:Ljava/util/concurrent/locks/Lock;

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->f:Ljava/util/concurrent/locks/Condition;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->h:Z

    .line 436
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->g:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/bluetooth/b;

    if-eqz v0, :cond_1

    const-string v1, "WearableBluetooth"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WearableBluetooth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBluetoothDeviceBondStateChanged state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/wearable/node/bluetooth/b;)V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x3

    .line 191
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "WearableBluetooth"

    const-string v1, "maybeStartConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/wearable/node/bluetooth/b;->a:Lcom/google/android/gms/wearable/node/bluetooth/a;

    if-eqz v0, :cond_2

    .line 195
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "WearableBluetooth"

    const-string v1, "  already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 202
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "WearableBluetooth"

    const-string v1, "  bluetooth adapter not on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/bluetooth/b;->b:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 209
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "WearableBluetooth"

    const-string v1, "  bluetooth device not bonded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_4
    iget-object v1, p1, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b(Ljava/lang/String;)V

    .line 215
    new-instance v1, Lcom/google/android/gms/wearable/node/bluetooth/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/a;-><init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/wearable/node/bluetooth/b;B)V

    iput-object v1, p1, Lcom/google/android/gms/wearable/node/bluetooth/b;->a:Lcom/google/android/gms/wearable/node/bluetooth/a;

    .line 216
    iget-object v0, p1, Lcom/google/android/gms/wearable/node/bluetooth/b;->a:Lcom/google/android/gms/wearable/node/bluetooth/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->e:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/wearable/node/bluetooth/b;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/b;->a:Lcom/google/android/gms/wearable/node/bluetooth/a;

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "WearableBluetooth"

    const-string v1, "Interrupting bluetooth thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/b;->a:Lcom/google/android/gms/wearable/node/bluetooth/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/b;->a:Lcom/google/android/gms/wearable/node/bluetooth/a;

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b()V

    .line 228
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->f:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)V
    .locals 4

    .prologue
    .line 47
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

    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/bluetooth/b;

    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/bluetooth/b;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "First started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "-- Connection : "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    const-string v1, "Config: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/bluetooth/b;->b:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 178
    const-string v1, "---- bt connection health ----"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/io/PrintWriter;)V

    .line 180
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 89
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "WearableBluetooth"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/y;->a(Landroid/content/Context;)V

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Lcom/google/android/gms/wearable/node/bluetooth/c;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/wearable/node/bluetooth/c;-><init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;B)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->c:Lcom/google/android/gms/wearable/node/bluetooth/c;

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->c:Lcom/google/android/gms/wearable/node/bluetooth/c;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->c:Lcom/google/android/gms/wearable/node/bluetooth/c;

    invoke-static {}, Lcom/google/android/gms/wearable/node/bluetooth/c;->a()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WearableBluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->g:Landroid/os/PowerManager$WakeLock;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "WearableBluetooth"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->c:Lcom/google/android/gms/wearable/node/bluetooth/c;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/bluetooth/b;

    .line 114
    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 117
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "WearableBluetooth"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    const-string v0, "connection_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 137
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid config: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/bluetooth/b;

    .line 141
    const-string v2, "connection_remove"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    if-eqz v1, :cond_3

    .line 144
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_3
    :goto_0
    return v5

    .line 147
    :cond_4
    const-string v2, "connection_disable"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    if-eqz v1, :cond_3

    .line 150
    iput-object v0, v1, Lcom/google/android/gms/wearable/node/bluetooth/b;->b:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 151
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    goto :goto_0

    .line 155
    :cond_5
    if-nez v1, :cond_6

    .line 156
    new-instance v1, Lcom/google/android/gms/wearable/node/bluetooth/b;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/android/gms/wearable/node/bluetooth/b;-><init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Landroid/content/Context;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    .line 157
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_6
    iput-object v0, v1, Lcom/google/android/gms/wearable/node/bluetooth/b;->b:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    .line 160
    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    .line 161
    invoke-direct {p0, v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    goto :goto_0
.end method
