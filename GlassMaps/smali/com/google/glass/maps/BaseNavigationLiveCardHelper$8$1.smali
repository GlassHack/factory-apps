.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/DirectionsManager$DestinationCallback;


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestinationReached()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$800(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1$1;-><init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method
