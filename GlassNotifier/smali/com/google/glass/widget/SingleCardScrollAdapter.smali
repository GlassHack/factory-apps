.class public Lcom/google/glass/widget/SingleCardScrollAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SingleCardScrollAdapter.java"


# instance fields
.field private final hasStableId:Z

.field private final item:Ljava/lang/Object;

.field private final itemId:J

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->view:Landroid/view/View;

    .line 20
    iput-object p2, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    .line 21
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->itemId:J

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->hasStableId:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;J)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "itemId"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->view:Landroid/view/View;

    .line 27
    iput-object p2, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    .line 28
    iput-wide p3, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->itemId:J

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->hasStableId:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->itemId:J

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->item:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->view:Landroid/view/View;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->view:Landroid/view/View;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/glass/widget/SingleCardScrollAdapter;->hasStableId:Z

    return v0
.end method
