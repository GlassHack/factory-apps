.class Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final reasonCode:I

.field final request:Lcom/google/android/maps/driveabout/nav/f;

.field final state:Lcom/google/android/maps/driveabout/nav/p;


# direct methods
.method public constructor <init>(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;->reasonCode:I

    .line 39
    iput-object p2, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;->request:Lcom/google/android/maps/driveabout/nav/f;

    .line 40
    iput-object p3, p0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener$RouteFailedPayload;->state:Lcom/google/android/maps/driveabout/nav/p;

    .line 41
    return-void
.end method
