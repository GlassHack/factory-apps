.class Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$1;
.super Ljava/lang/Object;
.source "TutorialDirectRenderingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$1;->this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$1;->this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    invoke-static {v0}, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->access$000(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/tutorial/TutorialManager;->tutorialsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$1;->this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    invoke-static {v0}, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->access$100(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$1;->this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    invoke-static {v1}, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->access$000(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)Lcom/google/glass/tutorial/TutorialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/tutorial/TutorialManager;->getTutorials()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->setTutorials(Ljava/util/List;)V

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$1;->this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
