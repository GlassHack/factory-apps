.class Lcom/google/glass/lockrecovery/TutorialActivity$1;
.super Landroid/os/Handler;
.source "TutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/lockrecovery/TutorialActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/lockrecovery/TutorialActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/lockrecovery/TutorialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/lockrecovery/TutorialActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/lockrecovery/TutorialActivity$1;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity$1;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/lockrecovery/TutorialActivity;->setResult(I)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity$1;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-virtual {v0}, Lcom/google/glass/lockrecovery/TutorialActivity;->finish()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity$1;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-virtual {v0}, Lcom/google/glass/lockrecovery/TutorialActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0, v2}, Lcom/google/glass/lockrecovery/TutorialActivity$1;->removeMessages(I)V

    .line 73
    iget-object v0, p0, Lcom/google/glass/lockrecovery/TutorialActivity$1;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-static {v0}, Lcom/google/glass/lockrecovery/TutorialActivity;->access$000(Lcom/google/glass/lockrecovery/TutorialActivity;)V

    goto :goto_0
.end method
