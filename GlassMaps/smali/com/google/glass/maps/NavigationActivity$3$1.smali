.class Lcom/google/glass/maps/NavigationActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/NavigationActivity$3;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity$3;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$3$1;->this$1:Lcom/google/glass/maps/NavigationActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$3$1;->this$1:Lcom/google/glass/maps/NavigationActivity$3;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity$3;->this$0:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->viewManager:Lcom/google/glass/maps/NavigationViewManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationViewManager;->notifySurfaceCreated()V

    .line 218
    return-void
.end method
