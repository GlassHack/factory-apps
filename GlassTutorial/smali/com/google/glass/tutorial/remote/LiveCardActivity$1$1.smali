.class Lcom/google/glass/tutorial/remote/LiveCardActivity$1$1;
.super Ljava/lang/Object;
.source "LiveCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/remote/LiveCardActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/tutorial/remote/LiveCardActivity$1;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/remote/LiveCardActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/tutorial/remote/LiveCardActivity$1;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1$1;->this$1:Lcom/google/glass/tutorial/remote/LiveCardActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1$1;->this$1:Lcom/google/glass/tutorial/remote/LiveCardActivity$1;

    iget-object v0, v0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1;->this$0:Lcom/google/glass/tutorial/remote/LiveCardActivity;

    iget-object v0, v0, Lcom/google/glass/tutorial/remote/LiveCardActivity;->liveCardView:Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/LiveCardActivity$1$1;->this$1:Lcom/google/glass/tutorial/remote/LiveCardActivity$1;

    iget-object v1, v1, Lcom/google/glass/tutorial/remote/LiveCardActivity$1;->this$0:Lcom/google/glass/tutorial/remote/LiveCardActivity;

    invoke-static {v1}, Lcom/google/glass/tutorial/remote/LiveCardActivity;->access$000(Lcom/google/glass/tutorial/remote/LiveCardActivity;)Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialManager;->getTutorials()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->setTutorials(Ljava/util/List;)V

    .line 26
    return-void
.end method
