.class public Lcom/google/glass/home/voice/TouchMenuEntityListFragment;
.super Lcom/google/glass/entity/CursorEntityListFragment;
.source "TouchMenuEntityListFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final entityUri:Landroid/net/Uri;

.field private final menuItemAction:I

.field private final prependEntitySet:Lcom/google/glass/entity/EntitySet;


# direct methods
.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Landroid/net/Uri;Lcom/google/glass/entity/EntitySet;I)V
    .locals 0
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "entityUri"    # Landroid/net/Uri;
    .param p3, "prependEntitySet"    # Lcom/google/glass/entity/EntitySet;
    .param p4, "menuItemAction"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/entity/CursorEntityListFragment;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->entityUri:Landroid/net/Uri;

    .line 47
    iput-object p1, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->activity:Lcom/google/glass/app/GlassActivity;

    .line 48
    iput-object p3, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->prependEntitySet:Lcom/google/glass/entity/EntitySet;

    .line 49
    iput p4, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->menuItemAction:I

    .line 50
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 81
    move-object v0, p1

    check-cast v0, Lcom/google/glass/home/voice/MainMenuEntityItemView;

    .line 82
    .local v0, "itemView":Lcom/google/glass/home/voice/MainMenuEntityItemView;
    invoke-virtual {p0, p2}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->getProtoBuff(Landroid/database/Cursor;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->bind(Ljava/lang/String;[B)V

    .line 83
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->getPrependCursorSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setIsPrepend(Z)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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

    .line 60
    new-instance v7, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v7}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 61
    .local v7, "selectionBuilder":Lcom/google/glass/util/SelectionBuilder;
    invoke-static {v7}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->selectMessagingContacts(Lcom/google/glass/util/SelectionBuilder;)V

    .line 62
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->entityUri:Landroid/net/Uri;

    const-string v6, "display_name"

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v0, "loader":Landroid/content/CursorLoader;
    invoke-virtual {v7}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v7}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method protected createPrependEntitySet()Ljava/util/List;
    .locals 2
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
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "timelineItemToMatch":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->prependEntitySet:Lcom/google/glass/entity/EntitySet;

    invoke-virtual {v1, v0}, Lcom/google/glass/entity/EntitySet;->getEntityList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 72
    .local v1, "layoutInflator":Landroid/view/LayoutInflater;
    sget v2, Lcom/google/glass/home/R$layout;->touch_menu_entity_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/MainMenuEntityItemView;

    .line 74
    .local v0, "itemView":Lcom/google/glass/home/voice/MainMenuEntityItemView;
    iget-object v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setGlassActivity(Lcom/google/glass/app/GlassActivity;)V

    .line 75
    iget v2, p0, Lcom/google/glass/home/voice/TouchMenuEntityListFragment;->menuItemAction:I

    invoke-virtual {v0, v2}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->setMenuItemAction(I)V

    .line 76
    return-object v0
.end method

.method protected recycleView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    move-object v0, p1

    check-cast v0, Lcom/google/glass/entity/EntityItemView;

    .line 89
    .local v0, "itemView":Lcom/google/glass/entity/EntityItemView;
    invoke-virtual {v0}, Lcom/google/glass/entity/EntityItemView;->recycle()V

    .line 90
    return-void
.end method
