.class Lcom/google/glass/bluetooth/handsfree/CievAtResult;
.super Ljava/lang/Object;
.source "CievAtResult.java"


# instance fields
.field private indicatorIndex:I

.field private indicatorValue:I

.field private isWellFormed:Z


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
    .locals 5
    .param p1, "result"    # Lcom/google/glass/bluetooth/handsfree/AtResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->indicatorIndex:I

    .line 15
    iput v3, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->indicatorValue:I

    .line 16
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->isWellFormed:Z

    .line 18
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 23
    .local v0, "resultArray":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    aget-object v1, v0, v3

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    aget-object v1, v0, v4

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 28
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->indicatorIndex:I

    .line 29
    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->indicatorValue:I

    .line 30
    iput-boolean v4, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->isWellFormed:Z

    goto :goto_0
.end method


# virtual methods
.method public getIndicatorIndex()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->indicatorIndex:I

    return v0
.end method

.method public getIndicatorValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->indicatorValue:I

    return v0
.end method

.method public isWellFormed()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/handsfree/CievAtResult;->isWellFormed:Z

    return v0
.end method
