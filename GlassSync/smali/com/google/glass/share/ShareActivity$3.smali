.class Lcom/google/glass/share/ShareActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareActivity;->showSharingMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareActivity;

.field final synthetic val$messageDialog:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$3;->this$0:Lcom/google/glass/share/ShareActivity;

    iput-object p2, p0, Lcom/google/glass/share/ShareActivity$3;->val$messageDialog:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$3;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareActivity;->access$100(Lcom/google/glass/share/ShareActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Share cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$3;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "chosen_share_target"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$3;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareActivity;->finish()V

    .line 426
    :cond_0
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$3;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareActivity;->onShareTargetConfirmed()V

    .line 438
    return-void
.end method

.method public onDoneMessageShown()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$3;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareActivity;->access$200(Lcom/google/glass/share/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$3;->val$messageDialog:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->done()V

    .line 433
    :cond_0
    return-void
.end method
