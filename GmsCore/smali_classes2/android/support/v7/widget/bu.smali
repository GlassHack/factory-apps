.class public final Landroid/support/v7/widget/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Landroid/support/v4/f/a;

.field c:Landroid/support/v4/f/a;

.field d:Landroid/support/v4/f/a;

.field e:I

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field private l:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7054
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/bu;->a:I

    .line 7055
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    .line 7057
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    .line 7060
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    .line 7067
    iput v1, p0, Landroid/support/v7/widget/bu;->e:I

    .line 7072
    iput v1, p0, Landroid/support/v7/widget/bu;->f:I

    .line 7078
    iput v1, p0, Landroid/support/v7/widget/bu;->g:I

    .line 7080
    iput-boolean v1, p0, Landroid/support/v7/widget/bu;->h:Z

    .line 7082
    iput-boolean v1, p0, Landroid/support/v7/widget/bu;->i:Z

    .line 7084
    iput-boolean v1, p0, Landroid/support/v7/widget/bu;->j:Z

    .line 7086
    iput-boolean v1, p0, Landroid/support/v7/widget/bu;->k:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 7219
    iget-boolean v0, p0, Landroid/support/v7/widget/bu;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bu;->f:I

    iget v1, p0, Landroid/support/v7/widget/bu;->g:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bu;->e:I

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/bx;)V
    .locals 3

    .prologue
    .line 7225
    iget-object v0, p0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7226
    iget-object v0, p0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7227
    iget-object v0, p0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    if-eqz v0, :cond_0

    .line 7228
    iget-object v1, p0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    invoke-virtual {v1}, Landroid/support/v4/f/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/support/v4/f/a;->d(I)Ljava/lang/Object;

    .line 7231
    :cond_0
    return-void

    .line 7228
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State{mTargetPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/bu;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bu;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bu;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bu;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/bu;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bu;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bu;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bu;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/bu;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
