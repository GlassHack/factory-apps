.class public Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/BaseSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GlassSetupRequestBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 791
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.companion.SETUP_GLASS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;Lcom/google/glass/setup/BaseSetupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/BaseSetupActivity;
    .param p2, "x1"    # Lcom/google/glass/setup/BaseSetupActivity$1;

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;-><init>(Lcom/google/glass/setup/BaseSetupActivity;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 812
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 799
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Setup request received."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.glass.companion.SETUP_GLASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    const-string v2, "setup_string"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/setup/BaseSetupActivity;->access$1002(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 803
    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v1}, Lcom/google/glass/setup/BaseSetupActivity;->access$1200(Lcom/google/glass/setup/BaseSetupActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v2, p0, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-static {v2}, Lcom/google/glass/setup/BaseSetupActivity;->access$1000(Lcom/google/glass/setup/BaseSetupActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupViaCompanionApp(Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$GlassSetupRequestBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/setup/BaseSetupActivity;->access$1002(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 808
    :cond_0
    return-void
.end method
