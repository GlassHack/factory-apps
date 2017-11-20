.class Lcom/google/glass/maps/NavigationPaneManager$2;
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
    .line 87
    iput-object p1, p0, Lcom/google/glass/maps/NavigationPaneManager$2;->this$0:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$2;->this$0:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationPaneManager;->access$000(Lcom/google/glass/maps/NavigationPaneManager;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$2;->this$0:Lcom/google/glass/maps/NavigationPaneManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationPaneManager;->access$000(Lcom/google/glass/maps/NavigationPaneManager;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/glass/widget/Slider$Indeterminate;->hide()V

    .line 92
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$2;->this$0:Lcom/google/glass/maps/NavigationPaneManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationPaneManager;->access$002(Lcom/google/glass/maps/NavigationPaneManager;Lcom/google/android/glass/widget/Slider$Indeterminate;)Lcom/google/android/glass/widget/Slider$Indeterminate;

    .line 94
    :cond_0
    return-void
.end method
