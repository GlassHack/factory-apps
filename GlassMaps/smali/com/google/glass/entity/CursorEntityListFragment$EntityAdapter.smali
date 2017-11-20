.class Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/google/glass/entity/CursorEntityListFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/CursorEntityListFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->context:Landroid/content/Context;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 194
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 201
    if-eqz p2, :cond_0

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, p2, v1}, Lcom/google/glass/entity/CursorEntityListFragment;->bindView(Landroid/view/View;Landroid/database/Cursor;)V

    .line 219
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 221
    return-object p2

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2, p3}, Lcom/google/glass/entity/CursorEntityListFragment;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 205
    new-instance v0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter$1;-><init>(Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCursor(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    .line 172
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->notifyDataSetChanged()V

    .line 173
    return-void
.end method
