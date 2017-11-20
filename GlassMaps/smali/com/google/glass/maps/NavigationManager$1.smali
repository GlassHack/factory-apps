.class Lcom/google/glass/maps/NavigationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bd;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager$1;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResource(Lcom/google/android/maps/driveabout/store/bb;)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$1;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->access$100(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/util/Scheduler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager$1;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v1}, Lcom/google/glass/maps/NavigationManager;->access$000(Lcom/google/glass/maps/NavigationManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/maps/util/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 120
    return-void
.end method
