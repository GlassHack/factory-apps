.class Lcom/google/glass/navlib/CrossThreadLocationListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/navlib/CrossThreadLocationListener;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/CrossThreadLocationListener;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/navlib/CrossThreadLocationListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadLocationListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadLocationListener;->access$000(Lcom/google/glass/navlib/CrossThreadLocationListener;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V

    move v0, v1

    .line 33
    goto :goto_0

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadLocationListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadLocationListener;->access$000(Lcom/google/glass/navlib/CrossThreadLocationListener;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/location/b;->onProviderDisabled(Ljava/lang/String;)V

    move v0, v1

    .line 36
    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadLocationListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadLocationListener;->access$000(Lcom/google/glass/navlib/CrossThreadLocationListener;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/location/b;->onProviderEnabled(Ljava/lang/String;)V

    move v0, v1

    .line 39
    goto :goto_0

    .line 41
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadLocationListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadLocationListener;->access$000(Lcom/google/glass/navlib/CrossThreadLocationListener;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/maps/driveabout/location/b;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    move v0, v1

    .line 42
    goto :goto_0

    .line 44
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadLocationListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadLocationListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadLocationListener;->access$000(Lcom/google/glass/navlib/CrossThreadLocationListener;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/location/z;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/location/b;->onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V

    move v0, v1

    .line 45
    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
