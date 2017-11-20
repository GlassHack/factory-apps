.class final Lcom/google/android/youtube/core/ui/d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/BasePagedView;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/ui/BasePagedView;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/ui/BasePagedView;Lcom/google/android/youtube/core/ui/d;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/d;-><init>(Lcom/google/android/youtube/core/ui/BasePagedView;)V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/BasePagedView;->i:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->a()V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    .prologue
    .line 344
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 345
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/d;->a()V

    .line 346
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 351
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/d;->a()V

    .line 352
    return-void
.end method
