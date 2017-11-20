.class Lcom/google/glass/setup/SetupCardScrollView$1;
.super Ljava/lang/Object;
.source "SetupCardScrollView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupCardScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupCardScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupCardScrollView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-virtual {v1}, Lcom/google/glass/setup/SetupCardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    .line 72
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    instance-of v1, v0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;

    if-eqz v1, :cond_0

    .line 73
    check-cast v0, Lcom/google/glass/setup/ArrayListCardScrollAdapter;

    .end local v0    # "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v0}, Lcom/google/glass/setup/ArrayListCardScrollAdapter;->isShowArrow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/setup/SetupCardScrollView;->access$000(Lcom/google/glass/setup/SetupCardScrollView;Landroid/view/View;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v1}, Lcom/google/glass/setup/SetupCardScrollView;->access$100(Lcom/google/glass/setup/SetupCardScrollView;)I

    move-result v1

    if-eq p3, v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v1}, Lcom/google/glass/setup/SetupCardScrollView;->access$200(Lcom/google/glass/setup/SetupCardScrollView;)Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    .line 78
    invoke-static {v1}, Lcom/google/glass/setup/SetupCardScrollView;->access$300(Lcom/google/glass/setup/SetupCardScrollView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    new-instance v2, Lcom/google/glass/setup/SetupCardScrollView$1$1;

    invoke-direct {v2, p0, p3}, Lcom/google/glass/setup/SetupCardScrollView$1$1;-><init>(Lcom/google/glass/setup/SetupCardScrollView$1;I)V

    invoke-virtual {v1, v2}, Lcom/google/glass/setup/SetupCardScrollView;->post(Ljava/lang/Runnable;)Z

    .line 90
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
