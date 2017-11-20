.class Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ConnectivityStateService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/connectivity/ConnectivityStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/connectivity/ConnectivityStateService;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStateService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/settings/connectivity/ConnectivityStateService;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStateService;

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/connectivity/ConnectivityStateService;Lcom/google/glass/settings/connectivity/ConnectivityStateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/connectivity/ConnectivityStateService;
    .param p2, "x1"    # Lcom/google/glass/settings/connectivity/ConnectivityStateService$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStateService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStateService$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/settings/connectivity/ConnectivityStateService;

    invoke-static {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStateService;->access$100(Lcom/google/glass/settings/connectivity/ConnectivityStateService;)V

    .line 113
    :cond_0
    return-void
.end method
