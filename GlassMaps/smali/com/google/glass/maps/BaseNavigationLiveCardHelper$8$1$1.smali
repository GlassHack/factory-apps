.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1$1;->this$2:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1$1;->this$2:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8$1;->this$1:Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;

    iget-object v0, v0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$8;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->stopNavigation(Z)V

    .line 497
    return-void
.end method
