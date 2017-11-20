.class Lcom/google/glass/maps/NavigationPaneManager$Pane;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final id:I

.field final stub:Landroid/view/ViewStub;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewStub;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/NavigationPaneManager$Pane;->id:I

    .line 50
    iput-object p1, p0, Lcom/google/glass/maps/NavigationPaneManager$Pane;->stub:Landroid/view/ViewStub;

    .line 51
    return-void
.end method


# virtual methods
.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$Pane;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$Pane;->stub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$Pane;->view:Landroid/view/View;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationPaneManager$Pane;->view:Landroid/view/View;

    return-object v0
.end method
