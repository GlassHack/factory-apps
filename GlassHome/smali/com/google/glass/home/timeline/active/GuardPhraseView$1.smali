.class Lcom/google/glass/home/timeline/active/GuardPhraseView$1;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;->onLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/active/GuardPhraseView;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$1000(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView$CallStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$1100(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 172
    return-void
.end method
