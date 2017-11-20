.class Lcom/google/glass/maps/NavigationActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/DirectionsManager$DestinationCallback;


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/NavigationActivity$7;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity$7;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$7$1;->this$1:Lcom/google/glass/maps/NavigationActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestinationReached()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7$1;->this$1:Lcom/google/glass/maps/NavigationActivity$7;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    new-instance v1, Lcom/google/glass/maps/NavigationActivity$7$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationActivity$7$1$1;-><init>(Lcom/google/glass/maps/NavigationActivity$7$1;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 790
    return-void
.end method
