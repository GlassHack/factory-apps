.class Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->onRerouteRequested(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->onRouteChanged(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;

    .line 58
    iget-object v2, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v2}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget v3, v0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;->reasonCode:I

    iget-object v4, v0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;->request:Lcom/google/android/maps/driveabout/nav/f;

    iget-object v0, v0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;->state:Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/maps/driveabout/nav/n;->onRouteFailed(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/i;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v3}, Lcom/google/android/maps/driveabout/nav/n;->onGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/i;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v3}, Lcom/google/android/maps/driveabout/nav/n;->onApproachingGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V

    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->onStepChanged(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    .line 68
    goto :goto_0

    .line 70
    :pswitch_6
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->onProgress(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :pswitch_7
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->onRouteCompletedSuccessfully(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    .line 74
    goto/16 :goto_0

    .line 76
    :pswitch_8
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;->this$0:Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-static {v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/nav/p;

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/nav/n;->onTrafficStatusChanged(Lcom/google/android/maps/driveabout/nav/p;)V

    move v0, v1

    .line 77
    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
