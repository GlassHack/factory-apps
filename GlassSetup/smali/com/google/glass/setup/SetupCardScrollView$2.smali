.class Lcom/google/glass/setup/SetupCardScrollView$2;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SetupCardScrollView.java"


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
    .line 97
    iput-object p1, p0, Lcom/google/glass/setup/SetupCardScrollView$2;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView$2;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v0}, Lcom/google/glass/setup/SetupCardScrollView;->access$400(Lcom/google/glass/setup/SetupCardScrollView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView$2;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v0}, Lcom/google/glass/setup/SetupCardScrollView;->access$400(Lcom/google/glass/setup/SetupCardScrollView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/setup/SetupCardScrollView$2;->this$0:Lcom/google/glass/setup/SetupCardScrollView;

    invoke-static {v0}, Lcom/google/glass/setup/SetupCardScrollView;->access$400(Lcom/google/glass/setup/SetupCardScrollView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/google/glass/setup/SetupCardScrollView$2;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
