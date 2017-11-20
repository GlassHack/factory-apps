.class Lcom/google/glass/maps/NavigationPaneManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationPaneManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationPaneManager;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/maps/NavigationPaneManager$1;->this$0:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$1;->this$0:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationPaneManager;->access$000(Lcom/google/glass/maps/NavigationPaneManager;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$1;->this$0:Lcom/google/glass/maps/NavigationPaneManager;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationPaneManager$1;->this$0:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-static {v1}, Lcom/google/glass/maps/NavigationPaneManager;->access$100(Lcom/google/glass/maps/NavigationPaneManager;)Lcom/google/android/glass/widget/Slider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/widget/Slider;->startIndeterminate()Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->access$002(Lcom/google/glass/maps/NavigationPaneManager;Lcom/google/android/glass/widget/Slider$Indeterminate;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 84
    :cond_0
    return-void
.end method
