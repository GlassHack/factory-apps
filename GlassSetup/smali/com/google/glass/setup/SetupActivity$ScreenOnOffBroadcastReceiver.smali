.class Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/SetupActivity;)V
    .locals 3

    .prologue
    .line 651
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    .line 652
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/SetupActivity;Lcom/google/glass/setup/SetupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/SetupActivity;
    .param p2, "x1"    # Lcom/google/glass/setup/SetupActivity$1;

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;-><init>(Lcom/google/glass/setup/SetupActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/google/glass/setup/SetupActivity;->access$1000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 659
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionStart()V

    .line 663
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$ScreenOnOffBroadcastReceiver;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-static {v0}, Lcom/google/glass/setup/SetupApplication;->from(Landroid/content/Context;)Lcom/google/glass/setup/SetupApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/setup/SetupApplication;->onUserActionEnd()V

    .line 665
    :cond_1
    return-void
.end method
