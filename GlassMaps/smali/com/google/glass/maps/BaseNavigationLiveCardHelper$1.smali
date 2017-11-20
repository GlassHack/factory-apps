.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$1;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$000()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->setShowRouteOverview(Z)V

    .line 92
    :cond_0
    return-void
.end method
