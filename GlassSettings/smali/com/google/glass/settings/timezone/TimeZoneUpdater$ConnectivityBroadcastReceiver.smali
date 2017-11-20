.class Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "TimeZoneUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/timezone/TimeZoneUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)V
    .locals 3

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .line 280
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "connectivityReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Lcom/google/glass/settings/timezone/TimeZoneUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;
    .param p2, "x1"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater$1;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-static {v1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$600(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$502(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Z)Z

    .line 286
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onReceiveInternal() [isConnected=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-static {v4}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$500(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-static {v0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$700(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$300(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Landroid/location/Location;)Z

    .line 288
    return-void
.end method
