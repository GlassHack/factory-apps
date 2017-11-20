.class public final Lcom/google/glass/util/BroadcastUnderWakeLock;
.super Ljava/lang/Object;
.source "BroadcastUnderWakeLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;
    }
.end annotation


# static fields
.field private static final WAKE_LOCK_TIMEOUT_MILLIS:J = 0x2710L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock;->getPowerManager(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private static getPowerManager(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    return-object v0
.end method

.method public static sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "broadcastIntent"    # Landroid/content/Intent;
    .param p2, "broadcastName"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "broadcastIntent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "broadcastName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 92
    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "sendBroadcastUnderWakeLock called with intent=%s, receiverPermission=%s  name=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v4, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;

    invoke-direct {v4, p0, p3}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/util/IntentSender;->sendOrderedBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 102
    return-void
.end method
