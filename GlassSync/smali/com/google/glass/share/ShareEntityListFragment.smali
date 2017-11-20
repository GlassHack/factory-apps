.class public Lcom/google/glass/share/ShareEntityListFragment;
.super Lcom/google/glass/entity/CursorEntityListFragment;
.source "ShareEntityListFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/share/ShareEntityListFragment$Listener;
    }
.end annotation


# instance fields
.field private final glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

.field private final listener:Lcom/google/glass/share/ShareEntityListFragment$Listener;

.field private final menuAction:I

.field private final onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

.field private final shareTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/glass/share/ShareEntityListFragment$Listener;Lcom/google/glass/widget/GlasswareIconBinder;ILjava/util/List;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/share/ShareEntityListFragment$Listener;
    .param p2, "glasswareIconBinder"    # Lcom/google/glass/widget/GlasswareIconBinder;
    .param p3, "menuAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/share/ShareEntityListFragment$Listener;",
            "Lcom/google/glass/widget/GlasswareIconBinder;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p4, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-direct {p0}, Lcom/google/glass/entity/CursorEntityListFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/google/glass/share/ShareEntityListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/glass/share/ShareEntityListFragment$1;-><init>(Lcom/google/glass/share/ShareEntityListFragment;)V

    iput-object v0, p0, Lcom/google/glass/share/ShareEntityListFragment;->onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

    .line 43
    iput-object p1, p0, Lcom/google/glass/share/ShareEntityListFragment;->listener:Lcom/google/glass/share/ShareEntityListFragment$Listener;

    .line 44
    iput-object p2, p0, Lcom/google/glass/share/ShareEntityListFragment;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    .line 45
    iput p3, p0, Lcom/google/glass/share/ShareEntityListFragment;->menuAction:I

    .line 46
    iput-object p4, p0, Lcom/google/glass/share/ShareEntityListFragment;->shareTargets:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/share/ShareEntityListFragment;)Lcom/google/glass/share/ShareEntityListFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/share/ShareEntityListFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/share/ShareEntityListFragment;->listener:Lcom/google/glass/share/ShareEntityListFragment$Listener;

    return-object v0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 82
    move-object v0, p1

    check-cast v0, Lcom/google/glass/entity/EntityItemView;

    .line 83
    .local v0, "itemView":Lcom/google/glass/entity/EntityItemView;
    iget v2, p0, Lcom/google/glass/share/ShareEntityListFragment;->menuAction:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 84
    .local v1, "showGlasswareIcon":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/glass/share/ShareEntityListFragment;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/glass/entity/EntityItemView;->setGlasswareIconBinder(Lcom/google/glass/widget/GlasswareIconBinder;)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/google/glass/share/ShareEntityListFragment;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/google/glass/share/ShareEntityListFragment;->getProtoBuff(Landroid/database/Cursor;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/entity/EntityItemView;->bind(Ljava/lang/String;[B)V

    .line 86
    iget-object v2, p0, Lcom/google/glass/share/ShareEntityListFragment;->onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

    invoke-virtual {v0, v2}, Lcom/google/glass/entity/EntityItemView;->setOnConfirmListener(Lcom/google/glass/entity/EntityItemView$OnConfirmListener;)V

    .line 87
    return-void

    .line 83
    .end local v1    # "showGlasswareIcon":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 84
    .restart local v1    # "showGlasswareIcon":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected createCursorLoader([Ljava/lang/String;)Landroid/content/Loader;
    .locals 8
    .param p1, "cols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v7, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v7}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 58
    .local v7, "selectionBuilder":Lcom/google/glass/util/SelectionBuilder;
    iget v1, p0, Lcom/google/glass/share/ShareEntityListFragment;->menuAction:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 59
    invoke-static {v7}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->selectSendTargets(Lcom/google/glass/util/SelectionBuilder;)V

    .line 64
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/glass/share/ShareEntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 65
    invoke-static {}, Lcom/google/glass/entity/EntityProviderConstants;->getAllEntitiesUri()Landroid/net/Uri;

    move-result-object v2

    const-string v6, "display_name"

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v0, "loader":Landroid/content/CursorLoader;
    invoke-virtual {v7}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v7}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 72
    return-object v0

    .line 60
    .end local v0    # "loader":Landroid/content/CursorLoader;
    :cond_1
    iget v1, p0, Lcom/google/glass/share/ShareEntityListFragment;->menuAction:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 61
    invoke-static {v7}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->selectShareTargets(Lcom/google/glass/util/SelectionBuilder;)V

    goto :goto_0
.end method

.method protected createPrependEntitySet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/share/ShareEntityListFragment;->shareTargets:Ljava/util/List;

    return-object v0
.end method

.method protected newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    new-instance v0, Lcom/google/glass/entity/EntityItemView;

    invoke-direct {v0, p1}, Lcom/google/glass/entity/EntityItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected recycleView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    check-cast p1, Lcom/google/glass/entity/EntityItemView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/google/glass/entity/EntityItemView;->recycle()V

    .line 92
    return-void
.end method
