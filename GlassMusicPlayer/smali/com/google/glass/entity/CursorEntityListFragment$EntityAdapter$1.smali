.class Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$1:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter$1;->this$1:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter$1;->this$1:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    iget-object v0, v0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-virtual {v0, p1}, Lcom/google/glass/entity/CursorEntityListFragment;->recycleView(Landroid/view/View;)V

    .line 213
    return-void
.end method
