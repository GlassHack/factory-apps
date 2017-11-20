.class Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "GuardPhraseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V
    .locals 3

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .line 238
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;Lcom/google/glass/home/timeline/active/GuardPhraseView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;
    .param p2, "x1"    # Lcom/google/glass/home/timeline/active/GuardPhraseView$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$1200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$1200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$ErrorTip;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeTip(Lcom/google/glass/widget/RotatingTipsView$Tip;)V

    goto :goto_0
.end method
