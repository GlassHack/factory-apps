.class Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;

.field final synthetic val$response:Lcom/google/glass/maps/directions/TransitDirectionsRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;Lcom/google/glass/maps/directions/TransitDirectionsRequest;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener$1;->this$1:Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;

    iput-object p2, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener$1;->val$response:Lcom/google/glass/maps/directions/TransitDirectionsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener$1;->this$1:Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener$1;->val$response:Lcom/google/glass/maps/directions/TransitDirectionsRequest;

    invoke-static {v0, v1}, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;->access$100(Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;Lcom/google/glass/maps/directions/TransitDirectionsRequest;)V

    .line 179
    return-void
.end method
