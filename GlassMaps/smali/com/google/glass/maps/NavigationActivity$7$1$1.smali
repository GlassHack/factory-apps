.class Lcom/google/glass/maps/NavigationActivity$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/google/glass/maps/NavigationActivity$7$1;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity$7$1;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActivity$7$1$1;->this$2:Lcom/google/glass/maps/NavigationActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActivity$7$1$1;->this$2:Lcom/google/glass/maps/NavigationActivity$7$1;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity$7$1;->this$1:Lcom/google/glass/maps/NavigationActivity$7;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity$7;->this$0:Lcom/google/glass/maps/NavigationActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->stopNavigation(Z)V

    .line 788
    return-void
.end method
