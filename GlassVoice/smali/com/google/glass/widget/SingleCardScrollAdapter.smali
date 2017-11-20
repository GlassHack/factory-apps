.class public Lcom/google/glass/widget/SingleCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SingleCardScrollAdapter.java"


# instance fields
.field private final item:Ljava/lang/Object;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->view:Landroid/view/View;

    .line 19
    iput-object p2, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->view:Landroid/view/View;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->view:Landroid/view/View;

    return-object v0
.end method
