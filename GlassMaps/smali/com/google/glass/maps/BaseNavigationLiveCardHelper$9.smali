.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

.field final synthetic val$companionError:Z

.field final synthetic val$errorMessage:Ljava/lang/CharSequence;

.field final synthetic val$hintMessage:Ljava/lang/CharSequence;

.field final synthetic val$isNetworkError:Z


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iput-boolean p2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->val$companionError:Z

    iput-object p3, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->val$errorMessage:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->val$hintMessage:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->val$isNetworkError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 591
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1400()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$300(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationPaneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationPaneManager;->getCurPane()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$202(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Landroid/view/View;)Landroid/view/View;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$300(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationPaneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationPaneManager;->hidePane()V

    .line 598
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->hideFatalError()V

    .line 599
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iget-boolean v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->val$companionError:Z

    invoke-static {v0, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$102(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Z)Z

    .line 601
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$1500(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->val$errorMessage:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->val$hintMessage:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->val$isNetworkError:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/maps/FatalErrorActivity;->createFatalErrorIntent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    .line 603
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 604
    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$9;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 605
    return-void
.end method
