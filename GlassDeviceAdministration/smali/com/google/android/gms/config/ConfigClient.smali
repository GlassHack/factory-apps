.class public final Lcom/google/android/gms/config/ConfigClient;
.super Ljava/lang/Object;


# static fields
.field private static BD:Landroid/content/Context; = null

.field private static BE:Lcom/google/android/gms/internal/bo; = null

.field private static BF:Ljava/lang/String; = null

.field private static BG:I = 0x0

.field private static BH:Landroid/content/Intent; = null

.field private static BI:Landroid/content/ServiceConnection; = null

.field private static BJ:Landroid/content/BroadcastReceiver; = null

.field private static final BK:Ljava/util/regex/Pattern;

.field private static final BL:Ljava/util/regex/Pattern;

.field public static final CHANGED_ACTION:Ljava/lang/String; = "com.google.android.gms.config.CHANGED"

.field public static final OVERRIDE_ACTION:Ljava/lang/String; = "com.google.android.gms.config.OVERRIDE"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/config/ConfigClient;->BD:Landroid/content/Context;

    sput-object v1, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    sput-object v1, Lcom/google/android/gms/config/ConfigClient;->BF:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/config/ConfigClient;->BG:I

    sput-object v1, Lcom/google/android/gms/config/ConfigClient;->BH:Landroid/content/Intent;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/ConfigClient;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/config/ConfigClient$1;

    invoke-direct {v0}, Lcom/google/android/gms/config/ConfigClient$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/google/android/gms/config/ConfigClient$2;

    invoke-direct {v0}, Lcom/google/android/gms/config/ConfigClient$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/config/ConfigClient;->BJ:Landroid/content/BroadcastReceiver;

    const-string v0, "^(1|true|t|yes|y|on)$"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/ConfigClient;->BK:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|no|n|off|)$"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/ConfigClient;->BL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bo;)Lcom/google/android/gms/internal/bo;
    .locals 0

    sput-object p0, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    return-object p0
.end method

.method public static blockUntilConnected(I)Z
    .locals 10
    .param p0, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    int-to-long v1, p0

    sget-object v7, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    monitor-enter v7

    :cond_0
    :try_start_0
    sget-object v8, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    if-nez v8, :cond_3

    sget-object v8, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v1, v2}, Ljava/lang/Object;->wait(J)V

    sget-object v1, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    if-eqz v1, :cond_1

    monitor-exit v7

    :goto_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    move-wide v1, v3

    :goto_1
    cmp-long v8, v1, v3

    if-gtz v8, :cond_0

    const/4 v0, 0x0

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    int-to-long v1, p0

    add-long/2addr v1, v5

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v1, v8

    goto :goto_1

    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static connect(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const-class v1, Lcom/google/android/gms/config/ConfigClient;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/google/android/gms/config/ConfigClient;->BG:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/config/ConfigClient;->BG:I

    sget v0, Lcom/google/android/gms/config/ConfigClient;->BG:I

    if-ne v0, v2, :cond_1

    sput-object p0, Lcom/google/android/gms/config/ConfigClient;->BD:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/config/ConfigClient;->BF:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.config.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/config/ConfigClient;->BH:Landroid/content/Intent;

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BH:Landroid/content/Intent;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/config/ConfigClient;->BJ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BH:Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/config/ConfigClient;->BF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ConfigClient"

    const-string v2, "connecting to Config Service with different package names"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static connect(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/config/ConfigClient;->connect(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/config/ConfigClient;->blockUntilConnected(I)Z

    move-result v0

    return v0
.end method

.method public static disconnect()V
    .locals 3

    const-class v1, Lcom/google/android/gms/config/ConfigClient;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/google/android/gms/config/ConfigClient;->BG:I

    if-nez v0, :cond_0

    const-string v0, "ConfigClient"

    const-string v2, "attempt to disconnect() when not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/config/ConfigClient;->BG:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/config/ConfigClient;->BG:I

    sget v0, Lcom/google/android/gms/config/ConfigClient;->BG:I

    if-lez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BD:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/config/ConfigClient;->BJ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BD:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    goto :goto_0
.end method

.method private static do()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/j;->dj()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "no connection to config service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic dp()Landroid/content/ServiceConnection;
    .locals 1

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic dq()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BD:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic dr()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BH:Landroid/content/Intent;

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/config/ConfigClient;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :cond_0
    sget-object v1, Lcom/google/android/gms/config/ConfigClient;->BK:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/config/ConfigClient;->BL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t interpret ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] as boolean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BF:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/config/ConfigClient;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanSafe(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/config/ConfigClient;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getBooleanSafe(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/config/ConfigClient;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p1

    .end local p1    # "defValue":Z
    :goto_0
    return p1

    .restart local p1    # "defValue":Z
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v1, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/config/ConfigClient;->do()V

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/bo;->g(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .end local p2    # "defValue":[B
    :goto_0
    monitor-exit v1

    return-object p2

    .restart local p2    # "defValue":[B
    :cond_0
    move-object p2, v0

    goto :goto_0

    .end local p2    # "defValue":[B
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BF:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/config/ConfigClient;->getBytes(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytesSafe(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # [B

    .prologue
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/config/ConfigClient;->getBytes(Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .end local p2    # "defValue":[B
    :goto_0
    return-object p2

    .restart local p2    # "defValue":[B
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getBytesSafe(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # [B

    .prologue
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/config/ConfigClient;->getBytes(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local p1    # "defValue":[B
    :goto_0
    return-object p1

    .restart local p1    # "defValue":[B
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BF:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/gms/config/ConfigClient;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/config/ConfigClient;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .end local p2    # "defValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public static getLongSafe(Ljava/lang/String;J)J
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .prologue
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/config/ConfigClient;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide p1

    .end local p1    # "defValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defValue":J
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getLongSafe(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/config/ConfigClient;->getLong(Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide p2

    .end local p2    # "defValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defValue":J
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BF:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/config/ConfigClient;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v1, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/config/ConfigClient;->do()V

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/bo;->g(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    .end local p2    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_0
    new-instance p2, Ljava/lang/String;

    .end local p2    # "defValue":Ljava/lang/String;
    sget-object v2, Lcom/google/android/gms/config/ConfigClient;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getStringSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/config/ConfigClient;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local p1    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getStringSafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/config/ConfigClient;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .end local p2    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getValuesByPrefix(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BF:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/gms/config/ConfigClient;->getValuesByPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getValuesByPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v1, Lcom/google/android/gms/config/ConfigClient;->BI:Landroid/content/ServiceConnection;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/config/ConfigClient;->do()V

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/bo;->getValuesByPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isConnected()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/config/ConfigClient;->BE:Lcom/google/android/gms/internal/bo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
