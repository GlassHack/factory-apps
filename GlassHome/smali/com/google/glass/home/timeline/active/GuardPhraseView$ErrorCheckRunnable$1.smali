.class Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

.field final synthetic val$boardTemperature:J

.field final synthetic val$currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;

.field final synthetic val$externalStorageState:Lcom/google/glass/util/StorageHelper$State;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;Lcom/google/glass/util/StorageHelper$State;Lcom/google/glass/util/BatteryHelper$BatteryState;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iput-object p2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->val$externalStorageState:Lcom/google/glass/util/StorageHelper$State;

    iput-object p3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->val$currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;

    iput-wide p4, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->val$boardTemperature:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "errorsFound":Z
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 74
    .local v1, "remoteCompanionProxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isTetheringErrorDetected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$400(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 77
    const/4 v0, 0x1

    .line 83
    :goto_0
    sget-object v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;->$SwitchMap$com$google$glass$util$StorageHelper$State:[I

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->val$externalStorageState:Lcom/google/glass/util/StorageHelper$State;

    invoke-virtual {v3}, Lcom/google/glass/util/StorageHelper$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 95
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$600(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 96
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$500(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 101
    :goto_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->val$currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;

    iget v2, v2, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->val$currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;

    iget-boolean v2, v2, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-nez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$700(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 103
    const/4 v0, 0x1

    .line 111
    :goto_2
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->val$boardTemperature:J

    const-wide/32 v4, 0xd6d8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$800(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 114
    const/4 v0, 0x1

    .line 119
    :goto_3
    invoke-static {}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Errors found: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$400(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    goto/16 :goto_0

    .line 85
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$500(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 86
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$600(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 87
    const/4 v0, 0x1

    .line 88
    goto/16 :goto_1

    .line 90
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$600(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 91
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$500(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 92
    const/4 v0, 0x1

    .line 93
    goto/16 :goto_1

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$700(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    goto/16 :goto_2

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v2, v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorCheckRunnable;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$800(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    goto/16 :goto_3

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
