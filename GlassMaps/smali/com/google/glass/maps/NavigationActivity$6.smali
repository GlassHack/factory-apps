.class Lcom/google/glass/maps/NavigationActivity$6;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$6;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$6;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationActivity;->access$000(Lcom/google/glass/maps/NavigationActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Stop directions canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 363
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$6;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->stopNavigation(Z)V

    .line 364
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$6;->this$0:Lcom/google/glass/maps/NavigationActivity;

    invoke-static {v0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$6;->this$0:Lcom/google/glass/maps/NavigationActivity;

    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->MANUAL_STOP:Lcom/google/glass/maps/GlassUserEventLogger$EndReason;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationActivity$6;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v2, v2, Lcom/google/glass/maps/NavigationActivity;->dirManager:Lcom/google/glass/maps/DirectionsManager;

    .line 367
    invoke-virtual {v2}, Lcom/google/glass/maps/DirectionsManager;->getDurationInSeconds()I

    move-result v2

    .line 366
    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsEnd(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V

    .line 369
    :cond_0
    return-void
.end method
