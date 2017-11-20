.class Lcom/google/glass/maps/NavigationManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager$3;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$3;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->access$200(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/UserInterfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->requestExit()V

    .line 132
    return-void
.end method
