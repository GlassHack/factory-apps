.class Lcom/google/glass/maps/NavigationActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/NavigationActivity$5;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity$5;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$5$1;->this$1:Lcom/google/glass/maps/NavigationActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$5$1;->this$1:Lcom/google/glass/maps/NavigationActivity$5;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity$5;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, v0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$5$1;->this$1:Lcom/google/glass/maps/NavigationActivity$5;

    iget-boolean v0, v0, Lcom/google/glass/maps/NavigationActivity$5;->val$isShowingRouteOverview:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    .line 315
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
