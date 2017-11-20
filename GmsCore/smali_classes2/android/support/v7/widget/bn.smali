.class public final Landroid/support/v7/widget/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/util/SparseArray;

.field private b:Landroid/util/SparseIntArray;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2915
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/util/SparseArray;

    .line 2917
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bn;->b:Landroid/util/SparseIntArray;

    .line 2918
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bn;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/bx;)V
    .locals 4

    .prologue
    .line 2959
    iget v1, p1, Landroid/support/v7/widget/bx;->e:I

    .line 2960
    iget-object v0, p0, Landroid/support/v7/widget/bn;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/bn;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v7/widget/bn;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/bn;->b:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2961
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/bn;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 2966
    :goto_0
    return-void

    .line 2964
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->m()V

    .line 2965
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
