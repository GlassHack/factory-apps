.class public Lcom/google/glass/bluetooth/map/GlassMapProfile;
.super Ljava/lang/Object;
.source "GlassMapProfile.java"

# interfaces
.implements Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;,
        Lcom/google/glass/bluetooth/map/GlassMapProfile$State;
    }
.end annotation


# static fields
.field static BACK_OFF_INTERVAL_UNIT_MS:J = 0x0L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final BLUETOOTH_MAP_CLIENT_CLASS_NAME:Ljava/lang/String; = "android.bluetooth.BluetoothMapClient"

.field private static final FORMATER:Ljava/text/SimpleDateFormat;

.field public static final KEY_SENDER:Ljava/lang/String; = "sender"

.field public static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final MAX_BACK_OFF_INTERVAL_MS:J = 0x7530L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private bluetoothMapClient:Ljava/lang/Object;

.field private connectMethod:Ljava/lang/reflect/Method;

.field private final context:Landroid/content/Context;

.field private currentState:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

.field private currentWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

.field private disconnectMethod:Ljava/lang/reflect/Method;

.field private volatile messageRead:I

.field private pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private readMethod:Ljava/lang/reflect/Method;

.field private stateTimestampMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/bluetooth/map/GlassMapProfile$State;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineNotificationHelper:Lcom/google/glass/timeline/TimelineNotificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->FORMATER:Ljava/text/SimpleDateFormat;

    .line 56
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->BACK_OFF_INTERVAL_UNIT_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    .line 85
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineNotificationHelper;-><init>()V

    const-string v2, "android.bluetooth.BluetoothMapClient"

    .line 84
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/glass/bluetooth/map/GlassMapProfile;-><init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "timelineNotificationHelper"    # Lcom/google/glass/timeline/TimelineNotificationHelper;
    .param p4, "bluetoothMapClientClassFullName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v2, Lcom/google/glass/bluetooth/map/GlassMapProfile$State;->NONE:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    iput-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->currentState:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    .line 77
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->stateTimestampMap:Ljava/util/Map;

    .line 80
    iput v6, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->messageRead:I

    .line 94
    iput-object p1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->context:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 96
    iput-object p3, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->timelineNotificationHelper:Lcom/google/glass/timeline/TimelineNotificationHelper;

    .line 99
    :try_start_0
    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "bluetoothMapClientClass":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->bluetoothMapClient:Ljava/lang/Object;

    .line 102
    const-string v2, "connect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/bluetooth/BluetoothDevice;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->connectMethod:Ljava/lang/reflect/Method;

    .line 103
    const-string v2, "disconnect"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->disconnectMethod:Ljava/lang/reflect/Method;

    .line 104
    const-string v2, "read"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->readMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 116
    .end local v0    # "bluetoothMapClientClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "no BluetoothMapClient found"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error creating BluetoothMapClient"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error creating BluetoothMapClient"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/InstantiationException;
    sget-object v2, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error creating BluetoothMapClient"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error creating BluetoothMapClient"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/map/GlassMapProfile;Lcom/google/glass/bluetooth/map/GlassMapProfile$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/map/GlassMapProfile;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->setProfileState(Lcom/google/glass/bluetooth/map/GlassMapProfile$State;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/map/GlassMapProfile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/map/GlassMapProfile;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->connect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/google/glass/bluetooth/map/GlassMapProfile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/map/GlassMapProfile;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->messageRead:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/map/GlassMapProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/map/GlassMapProfile;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->read()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/map/GlassMapProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/map/GlassMapProfile;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->disconnect()V

    return-void
.end method

.method private connect()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->bluetoothMapClient:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 237
    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No bluetooth map client found"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 249
    :goto_0
    return v1

    .line 242
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Connecting..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->connectMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->bluetoothMapClient:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v7}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error in connecting"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    move v1, v3

    .line 249
    goto :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error in connecting"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->bluetoothMapClient:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 254
    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No bluetooth map client found"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Disconnecting..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->disconnectMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->bluetoothMapClient:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error in disconnecting"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error in disconnecting"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private read()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 268
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->bluetoothMapClient:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 269
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No bluetooth map client found"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_0
    return-void

    :cond_0
    move-object v9, v10

    .line 286
    check-cast v9, Landroid/os/Bundle;

    .line 289
    .local v9, "msg":Landroid/os/Bundle;
    new-instance v2, Ljava/lang/String;

    const-string v0, "sender"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 290
    .local v2, "sender":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 291
    .local v1, "text":Ljava/lang/String;
    iget v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->messageRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->messageRead:I

    .line 293
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Ignore an empty message"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "sender":Ljava/lang/String;
    .end local v9    # "msg":Landroid/os/Bundle;
    :cond_1
    :goto_1
    const/4 v10, 0x0

    .line 275
    .local v10, "result":Ljava/lang/Object;
    :try_start_0
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Waiting for message..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->readMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->bluetoothMapClient:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 282
    .end local v10    # "result":Ljava/lang/Object;
    :goto_2
    if-eqz v10, :cond_2

    move-object v0, v10

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    :cond_2
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No more message. MSE is probably disconnected. quitting..."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    .restart local v10    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 278
    .local v8, "e":Ljava/lang/IllegalAccessException;
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error in disconnecting"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0, v8, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 279
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v8

    .line 280
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error in disconnecting"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0, v8, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 298
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v10    # "result":Ljava/lang/Object;
    .restart local v1    # "text":Ljava/lang/String;
    .restart local v2    # "sender":Ljava/lang/String;
    .restart local v9    # "msg":Landroid/os/Bundle;
    :cond_3
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Received %s messages"

    new-array v5, v12, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->messageRead:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->context:Landroid/content/Context;

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v7, Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;->NATIVE_SMS:Lcom/google/glass/companion/CompanionTimelineUtils$SmsType;

    .line 301
    invoke-static/range {v0 .. v7}, Lcom/google/glass/companion/CompanionTimelineUtils;->getCompanionSmsTimelineItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcom/google/glass/companion/CompanionTimelineUtils$SmsType;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v11

    .line 305
    .local v11, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/16 v0, 0xb

    invoke-virtual {v11, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 307
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/glass/util/HashUtil;->hashPiiField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 310
    new-array v0, v12, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/glass/companion/CompanionTimelineUtils;->getSmsCreator(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v4

    aput-object v4, v0, v6

    iput-object v0, v11, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 312
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MAP_SMS_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v0, v11, v4, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 315
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->timelineNotificationHelper:Lcom/google/glass/timeline/TimelineNotificationHelper;

    iget-object v4, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->context:Landroid/content/Context;

    invoke-virtual {v0, v4, v11, v12}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    goto/16 :goto_1
.end method

.method private setProfileState(Lcom/google/glass/bluetooth/map/GlassMapProfile$State;)V
    .locals 4
    .param p1, "state"    # Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    .prologue
    .line 225
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "WorkThread state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iput-object p1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->currentState:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    .line 227
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->stateTimestampMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method private validateBluetoothMap()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->bluetoothMapClient:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->connectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->disconnectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->readMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->currentWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 233
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 214
    const-string v1, "========GlassMapProfileState==========="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->currentState:Lcom/google/glass/bluetooth/map/GlassMapProfile$State;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    iget v1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->messageRead:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Read messages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->stateTimestampMap:Ljava/util/Map;

    monitor-enter v2

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->stateTimestampMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/glass/bluetooth/map/GlassMapProfile$State;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/glass/bluetooth/map/GlassMapProfile;->FORMATER:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/glass/bluetooth/map/GlassMapProfile$State;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    return-void
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 3
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v2, 0x0

    .line 124
    iput-object p1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 126
    invoke-direct {p0}, Lcom/google/glass/bluetooth/map/GlassMapProfile;->validateBluetoothMap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "The bluetooth map client is not correct."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 132
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothMacAddress;->isAppleMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 133
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->hasMyGlassMulticastConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    :cond_1
    new-instance v0, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    iget-object v1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->currentWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;-><init>(Lcom/google/glass/bluetooth/map/GlassMapProfile;Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->currentWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    .line 135
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->currentWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;->start()V

    goto :goto_0

    .line 137
    :cond_2
    sget-object v0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No suitable device to get message from. Killing the existing thread if it is running."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->currentWorkerThread:Lcom/google/glass/bluetooth/map/GlassMapProfile$WorkerThread;

    sget-object v1, Lcom/google/glass/bluetooth/map/GlassMapProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0
.end method

.method public onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/glass/bluetooth/map/GlassMapProfile;->pairedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 210
    return-void
.end method
