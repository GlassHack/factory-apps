.class Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ConnectivityStatusCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TickBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V
    .locals 3

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .line 466
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.TIME_TICK"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .param p2, "x1"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$1;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 476
    invoke-static {}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager$TickBroadcastReceiver;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    invoke-static {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->access$1300(Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;)V

    .line 472
    return-void
.end method
