.class public abstract Lcom/google/glass/entity/CursorEntityListFragment;
.super Lcom/google/glass/entity/EntityListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final CURSOR_LOADER_ID:I = 0x0

.field private static final NO_IDX:I = -0x1


# instance fields
.field private adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

.field private displayNameIdx:I

.field private prependCursor:Landroid/database/Cursor;

.field private protobuffIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protobuf_blob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 44
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListFragment;-><init>()V

    .line 41
    iput v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->displayNameIdx:I

    .line 42
    iput v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->protobuffIdx:I

    .line 44
    return-void
.end method

.method private setCursor(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 115
    if-eqz p1, :cond_1

    .line 116
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->displayNameIdx:I

    .line 117
    const-string v0, "protobuf_blob"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->protobuffIdx:I

    .line 118
    iget v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->displayNameIdx:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->protobuffIdx:I

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor columns were not retrieved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-virtual {v0, p1}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->setCursor(Landroid/database/Cursor;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method protected abstract createCursorLoader([Ljava/lang/String;)Landroid/content/Loader;
.end method

.method protected abstract createPrependEntitySet()Ljava/util/List;
.end method

.method public final getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    return-object v0
.end method

.method protected getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->displayNameIdx:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPrependCursorSize()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getProtoBuff(Landroid/database/Cursor;)[B
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->protobuffIdx:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/glass/entity/EntityListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/google/glass/entity/EntityListCursor;

    sget-object v1, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->createPrependEntitySet()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/entity/EntityListCursor;-><init>([Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    .line 50
    new-instance v0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;-><init>(Lcom/google/glass/entity/CursorEntityListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    .line 51
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 52
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/CursorEntityListFragment;->createCursorLoader([Ljava/lang/String;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/glass/entity/EntityListFragment;->onDestroy()V

    .line 60
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 61
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-static {v0}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->access$000(Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p2, v0

    .line 93
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/glass/entity/CursorEntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 94
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/CursorEntityListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/entity/CursorEntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 99
    return-void
.end method

.method protected recycleView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method protected showFastScrollLabel(I)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/entity/EntityListFragment;->showFastScrollLabel(I)Z

    move-result v0

    goto :goto_0
.end method
