.class Lcom/google/glass/maps/NavigationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$1;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$1;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$1;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$1;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->navManager:Lcom/google/glass/maps/NavigationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    .line 143
    :cond_0
    return-void
.end method
