.class Lcom/google/glass/maps/directions/TransitMapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/directions/TransitMapView;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/directions/TransitMapView;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitMapView$1;->this$0:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView$1;->this$0:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-static {v0}, Lcom/google/glass/maps/directions/TransitMapView;->access$100(Lcom/google/glass/maps/directions/TransitMapView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView$1;->this$0:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-static {v1}, Lcom/google/glass/maps/directions/TransitMapView;->access$000(Lcom/google/glass/maps/directions/TransitMapView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    return-void
.end method
