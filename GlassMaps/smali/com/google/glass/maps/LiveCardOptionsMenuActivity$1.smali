.class Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/LiveCardOptionsMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/LiveCardOptionsMenuActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;->this$0:Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Stop directions canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;->this$0:Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->finish()V

    .line 212
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 216
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;->this$0:Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    invoke-static {v0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->access$100(Lcom/google/glass/maps/LiveCardOptionsMenuActivity;)Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->stopNavigation(Z)V

    .line 217
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;->this$0:Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    invoke-static {v0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;->this$0:Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->MANUAL_STOP:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    iget-object v2, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;->this$0:Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    .line 221
    invoke-static {v2}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->access$200(Lcom/google/glass/maps/LiveCardOptionsMenuActivity;)Lcom/google/glass/maps/DirectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getDurationInSeconds()I

    move-result v2

    .line 220
    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsEnd(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/LiveCardOptionsMenuActivity$1;->this$0:Lcom/google/glass/maps/LiveCardOptionsMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/LiveCardOptionsMenuActivity;->finish()V

    .line 224
    return-void
.end method
