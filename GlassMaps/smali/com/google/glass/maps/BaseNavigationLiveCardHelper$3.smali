.class Lcom/google/glass/maps/BaseNavigationLiveCardHelper$3;
.super Lcom/google/glass/maps/BaseNavigationUserInterface;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$3;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-direct {p0}, Lcom/google/glass/maps/BaseNavigationUserInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public setKeepScreenOn(Z)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$3;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$400(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$3;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->navigate()V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/BaseNavigationLiveCardHelper$3;->this$0:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-static {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->access$400(Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    goto :goto_0
.end method
