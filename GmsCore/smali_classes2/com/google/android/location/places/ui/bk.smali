.class final Lcom/google/android/location/places/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/be;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/google/android/location/places/ui/be;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/location/places/ui/bk;->a:Lcom/google/android/location/places/ui/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/places/ui/be;B)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/google/android/location/places/ui/bk;-><init>(Lcom/google/android/location/places/ui/be;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 374
    if-nez v1, :cond_1

    .line 376
    :goto_0
    iget v1, p0, Lcom/google/android/location/places/ui/bk;->c:I

    if-ne p2, v1, :cond_4

    .line 377
    iget v1, p0, Lcom/google/android/location/places/ui/bk;->b:I

    if-le v0, v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/google/android/location/places/ui/bk;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v1}, Lcom/google/android/location/places/ui/be;->e(Lcom/google/android/location/places/ui/be;)V

    .line 390
    :cond_0
    :goto_1
    iput v0, p0, Lcom/google/android/location/places/ui/bk;->b:I

    .line 391
    iput p2, p0, Lcom/google/android/location/places/ui/bk;->c:I

    .line 392
    return-void

    .line 374
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 379
    :cond_2
    iget v1, p0, Lcom/google/android/location/places/ui/bk;->b:I

    if-ge v0, v1, :cond_0

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/ui/bk;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v1}, Lcom/google/android/location/places/ui/be;->f(Lcom/google/android/location/places/ui/be;)V

    goto :goto_1

    .line 383
    :cond_4
    iget v1, p0, Lcom/google/android/location/places/ui/bk;->c:I

    if-ge p2, v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/google/android/location/places/ui/bk;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v1}, Lcom/google/android/location/places/ui/be;->e(Lcom/google/android/location/places/ui/be;)V

    goto :goto_1
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/android/location/places/ui/bk;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v0}, Lcom/google/android/location/places/ui/be;->g(Lcom/google/android/location/places/ui/be;)Lcom/google/android/location/places/ui/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/bi;->clear()V

    .line 399
    iget-object v0, p0, Lcom/google/android/location/places/ui/bk;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v0}, Lcom/google/android/location/places/ui/be;->a(Lcom/google/android/location/places/ui/be;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 401
    :cond_0
    return-void
.end method
