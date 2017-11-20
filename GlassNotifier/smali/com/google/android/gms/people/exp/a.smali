.class public abstract Lcom/google/android/gms/people/exp/a;
.super Ljava/lang/Object;


# instance fields
.field private final mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

.field private mPos:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getWindowIndex()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->f(Ljava/lang/String;II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getWindowIndex()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getWindowIndex()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getWindowIndex()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getWindowIndex()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->dc(I)I

    move-result v0

    return v0
.end method

.method public final isAfterLast()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/exp/a;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final isFirst()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iget v0, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/a;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    iput v1, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    :goto_0
    return v0

    :cond_0
    if-gez p1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/exp/a;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
