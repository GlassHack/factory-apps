.class Lcom/google/glass/setup/SetupCardScrollView$1$1;
.super Ljava/lang/Object;
.source "SetupCardScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupCardScrollView$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/setup/SetupCardScrollView$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupCardScrollView$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/setup/SetupCardScrollView$1;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/glass/setup/SetupCardScrollView$1$1;->this$1:Lcom/google/glass/setup/SetupCardScrollView$1;

    iput p2, p0, Lcom/google/glass/setup/SetupCardScrollView$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView$1$1;->this$1:Lcom/google/glass/setup/SetupCardScrollView$1;

    iget-object v0, v0, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v0}, Lcom/google/glass/setup/SetupCardScrollView;->access$200(Lcom/google/glass/setup/SetupCardScrollView;)Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/setup/SetupCardScrollView$1$1;->val$index:I

    iget-object v2, p0, Lcom/google/glass/setup/SetupCardScrollView$1$1;->this$1:Lcom/google/glass/setup/SetupCardScrollView$1;

    iget-object v2, v2, Lcom/google/glass/setup/SetupCardScrollView$1;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v2}, Lcom/google/glass/setup/SetupCardScrollView;->access$100(Lcom/google/glass/setup/SetupCardScrollView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/google/glass/setup/SetupCardScrollView$OnSettledAfterSwipeListener;->onSettledAfterSwipe(I)V

    .line 86
    return-void
.end method
