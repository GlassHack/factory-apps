.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    if-eqz p2, :cond_1

    const-string v0, "com.google.glass.extra.STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ANA:Lcom/google/glass/util/Labs$Feature;

    .line 99
    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/R$string;->myglass_lost_connection_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    .line 104
    invoke-virtual {v2}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/glass/maps/R$string;->myglass_lost_connection_hint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 103
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->showFatalError(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$100(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->hideFatalError()V

    .line 111
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$200(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$300(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/maps/NavigationPaneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$200(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->showPane(I)Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$2;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$202(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
