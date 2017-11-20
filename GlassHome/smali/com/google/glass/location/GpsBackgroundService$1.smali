.class Lcom/google/glass/location/GpsBackgroundService$1;
.super Ljava/lang/Object;
.source "GpsBackgroundService.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/GpsBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/GpsBackgroundService;


# direct methods
.method constructor <init>(Lcom/google/glass/location/GpsBackgroundService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/location/GpsBackgroundService;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/glass/location/GpsBackgroundService$1;->this$0:Lcom/google/glass/location/GpsBackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 235
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService$1;->this$0:Lcom/google/glass/location/GpsBackgroundService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/glass/location/GpsBackgroundService;->access$002(Lcom/google/glass/location/GpsBackgroundService;Z)Z

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService$1;->this$0:Lcom/google/glass/location/GpsBackgroundService;

    invoke-static {v2}, Lcom/google/glass/location/GpsBackgroundService;->access$100(Lcom/google/glass/location/GpsBackgroundService;)Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    .line 239
    .local v1, "status":Landroid/location/GpsStatus;
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService$1;->this$0:Lcom/google/glass/location/GpsBackgroundService;

    invoke-virtual {v2, v1}, Lcom/google/glass/location/GpsBackgroundService;->getSatellites(Landroid/location/GpsStatus;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 240
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService$1;->this$0:Lcom/google/glass/location/GpsBackgroundService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/location/GpsBackgroundService;->access$202(Lcom/google/glass/location/GpsBackgroundService;I)I

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService$1;->this$0:Lcom/google/glass/location/GpsBackgroundService;

    invoke-static {v2}, Lcom/google/glass/location/GpsBackgroundService;->access$208(Lcom/google/glass/location/GpsBackgroundService;)I

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService$1;->this$0:Lcom/google/glass/location/GpsBackgroundService;

    invoke-static {v2}, Lcom/google/glass/location/GpsBackgroundService;->access$000(Lcom/google/glass/location/GpsBackgroundService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService$1;->this$0:Lcom/google/glass/location/GpsBackgroundService;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/glass/location/GpsBackgroundService;->access$300(Lcom/google/glass/location/GpsBackgroundService;J)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
