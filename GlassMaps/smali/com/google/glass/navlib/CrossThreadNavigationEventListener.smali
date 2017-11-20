.class public Lcom/google/glass/navlib/CrossThreadNavigationEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/nav/n;


# static fields
.field private static final MSG_ON_APPROACHING_GUIDANCE_EVENT:I = 0x5

.field private static final MSG_ON_GUIDANCE_EVENT:I = 0x4

.field private static final MSG_ON_PROGRESS:I = 0x7

.field private static final MSG_ON_REROUTE_REQUESTED:I = 0x1

.field private static final MSG_ON_ROUTE_CHANGED:I = 0x2

.field private static final MSG_ON_ROUTE_COMPLETED_SUCCESSFULLY:I = 0x8

.field private static final MSG_ON_ROUTE_FAILED:I = 0x3

.field private static final MSG_ON_STEP_CHANGED:I = 0x6

.field private static final MSG_ON_TRAFFIC_STATUS_CHANGED:I = 0x9


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/maps/driveabout/nav/n;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/n;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;

    invoke-direct {v1, p0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$1;-><init>(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->handler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->listener:Lcom/google/android/maps/driveabout/nav/n;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/navlib/CrossThreadNavigationEventListener;)Lcom/google/android/maps/driveabout/nav/n;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->listener:Lcom/google/android/maps/driveabout/nav/n;

    return-object v0
.end method

.method private sendSimpleMessage(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method


# virtual methods
.method public onApproachingGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 113
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 114
    iget-object v1, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method public onGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 106
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 107
    iget-object v1, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method

.method public onProgress(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public onRerouteRequested(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public onRouteChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public onRouteCompletedSuccessfully(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onRouteFailed(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;-><init>(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V

    .line 100
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public onStepChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onTrafficStatusChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;->sendSimpleMessage(ILjava/lang/Object;)V

    .line 135
    return-void
.end method
