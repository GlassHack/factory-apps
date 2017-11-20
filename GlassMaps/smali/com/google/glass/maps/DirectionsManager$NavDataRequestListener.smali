.class public Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field private final dispatcher:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final showAlternateTrips:Z

.field final synthetic this$0:Lcom/google/glass/maps/DirectionsManager;


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/DirectionsManager;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->dispatcher:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 165
    iput-boolean p3, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->showAlternateTrips:Z

    .line 166
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;Lcom/google/glass/maps/directions/TransitDirectionsRequest;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->handleRequestOnUiThread(Lcom/google/glass/maps/directions/TransitDirectionsRequest;)V

    return-void
.end method

.method private handleRequestOnUiThread(Lcom/google/glass/maps/directions/TransitDirectionsRequest;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/UserInterfaceManager;->setKeepScreenOn(Z)V

    .line 205
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getTrips()[Lcom/google/glass/maps/directions/Trip;

    move-result-object v0

    .line 207
    array-length v1, v0

    if-lez v1, :cond_1

    .line 208
    iget-boolean v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->showAlternateTrips:Z

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v1}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/UserInterfaceManager;->showTrips([Lcom/google/glass/maps/directions/Trip;)V

    .line 210
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    .line 211
    invoke-static {v1}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v1

    array-length v0, v0

    .line 210
    invoke-static {v1, v0, v3}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsReceived(Landroid/content/Context;II)V

    .line 224
    :goto_0
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 234
    :goto_1
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/DirectionsManager;->showDirections(Lcom/google/glass/maps/directions/Trip;)V

    .line 214
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    .line 215
    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v2}, Lcom/google/glass/maps/DirectionsManager;->access$400(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/directions/Trip;

    move-result-object v2

    iget-object v2, v2, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v2, v2

    .line 214
    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsReceived(Landroid/content/Context;II)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    .line 219
    invoke-static {v1}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/util/TravelModeUtils;->getRoutingErrorForCurrentTravelMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showFatalError(Ljava/lang/CharSequence;Z)V

    .line 220
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "no_trips"

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->isRefinementRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsRefinements(Landroid/content/Context;)V

    .line 227
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getRefinements()[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->showDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_1

    .line 229
    :cond_3
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unexpected transit directions response status"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    .line 231
    invoke-static {v1}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/util/TravelModeUtils;->getRoutingErrorForCurrentTravelMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showFatalError(Ljava/lang/CharSequence;Z)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onComplete(Lcom/google/googlenav/datarequest/d;)V
    .locals 5

    .prologue
    .line 170
    instance-of v0, p1, Lcom/google/glass/maps/directions/TransitDirectionsRequest;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->dispatcher:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    .line 172
    check-cast p1, Lcom/google/glass/maps/directions/TransitDirectionsRequest;

    .line 173
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onComplete: Status=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->statusString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-object v0, v0, Lcom/google/glass/maps/DirectionsManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    new-instance v1, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener$1;-><init>(Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;Lcom/google/glass/maps/directions/TransitDirectionsRequest;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/maps/util/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 182
    :cond_0
    return-void
.end method

.method public onNetworkError(IZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->setKeepScreenOn(Z)V

    .line 187
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->dispatcher:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    .line 188
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v1}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/R$string;->error_network_failure:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/UserInterfaceManager;->showFatalError(Ljava/lang/CharSequence;Z)V

    .line 189
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "network_error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsError(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public onPermanentFailure(Lcom/google/googlenav/datarequest/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-static {}, Lcom/google/glass/maps/DirectionsManager;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onPermanentFailure"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/UserInterfaceManager;->setKeepScreenOn(Z)V

    .line 197
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->dispatcher:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    .line 198
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    .line 199
    invoke-static {v1}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/util/TravelModeUtils;->getRoutingErrorForCurrentTravelMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showFatalError(Ljava/lang/CharSequence;Z)V

    .line 200
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v0}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "permanent_failure"

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsError(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    return-void
.end method
