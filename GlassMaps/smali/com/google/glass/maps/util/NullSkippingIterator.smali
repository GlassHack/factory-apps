.class public Lcom/google/glass/maps/util/NullSkippingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private curPos:I

.field private final list:Ljava/util/List;

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->list:Ljava/util/List;

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->size:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    .line 22
    :goto_0
    iget v0, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    iget v1, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->size:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    iget v0, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    iget v1, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->list:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 35
    :goto_0
    iget v1, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    iget v2, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->size:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->list:Ljava/util/List;

    iget v2, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 36
    iget v1, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/maps/util/NullSkippingIterator;->curPos:I

    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
