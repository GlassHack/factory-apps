.class Lcom/google/glass/bluetooth/handsfree/CindAtResult;
.super Ljava/lang/Object;
.source "CindAtResult.java"


# instance fields
.field private final indicatorList:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

.field private isWellFormed:Z


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
    .locals 10
    .param p1, "result"    # Lcom/google/glass/bluetooth/handsfree/AtResult;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, [Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 19
    :cond_0
    iput-boolean v8, p0, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->isWellFormed:Z

    .line 20
    iput-object v9, p0, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->indicatorList:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    .line 49
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 25
    .local v4, "resultArray":[Ljava/lang/Object;
    array-length v5, v4

    new-array v1, v5, [Lcom/google/glass/bluetooth/handsfree/Indicator;

    .line 26
    .local v1, "ind":[Lcom/google/glass/bluetooth/handsfree/Indicator;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_7

    .line 27
    aget-object v5, v4, v0

    instance-of v5, v5, [Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 28
    iput-boolean v8, p0, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->isWellFormed:Z

    .line 29
    iput-object v9, p0, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->indicatorList:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    goto :goto_0

    .line 32
    :cond_2
    aget-object v5, v4, v0

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    .line 33
    .local v2, "objArray":[Ljava/lang/Object;
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    aget-object v5, v2, v8

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_4

    .line 26
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_4
    const/4 v3, 0x0

    .line 37
    .local v3, "range":Lcom/google/glass/bluetooth/handsfree/AtResult$Range;
    aget-object v5, v2, v7

    instance-of v5, v5, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    if-eqz v5, :cond_6

    .line 38
    aget-object v3, v2, v7

    .end local v3    # "range":Lcom/google/glass/bluetooth/handsfree/AtResult$Range;
    check-cast v3, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    .line 42
    .restart local v3    # "range":Lcom/google/glass/bluetooth/handsfree/AtResult$Range;
    :cond_5
    :goto_3
    if-eqz v3, :cond_3

    .line 45
    new-instance v6, Lcom/google/glass/bluetooth/handsfree/Indicator;

    aget-object v5, v2, v8

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5, v3}, Lcom/google/glass/bluetooth/handsfree/Indicator;-><init>(Ljava/lang/String;Lcom/google/glass/bluetooth/handsfree/AtResult$Range;)V

    aput-object v6, v1, v0

    goto :goto_2

    .line 39
    :cond_6
    aget-object v5, v2, v7

    instance-of v5, v5, [Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 40
    aget-object v5, v2, v7

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->rangeFromArray([Ljava/lang/Object;)Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    move-result-object v3

    goto :goto_3

    .line 47
    .end local v2    # "objArray":[Ljava/lang/Object;
    .end local v3    # "range":Lcom/google/glass/bluetooth/handsfree/AtResult$Range;
    :cond_7
    new-instance v5, Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    invoke-direct {v5, v1}, Lcom/google/glass/bluetooth/handsfree/IndicatorList;-><init>([Lcom/google/glass/bluetooth/handsfree/Indicator;)V

    iput-object v5, p0, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->indicatorList:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    .line 48
    iput-boolean v7, p0, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->isWellFormed:Z

    goto :goto_0
.end method

.method private rangeFromArray([Ljava/lang/Object;)Lcom/google/glass/bluetooth/handsfree/AtResult$Range;
    .locals 6
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 61
    array-length v4, p1

    if-nez v4, :cond_0

    move-object v4, v5

    .line 76
    :goto_0
    return-object v4

    .line 65
    :cond_0
    const v2, 0x7fffffff

    .line 66
    .local v2, "low":I
    const/high16 v0, -0x80000000

    .line 67
    .local v0, "high":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 68
    aget-object v4, p1, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    move-object v4, v5

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    aget-object v4, p1, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 72
    .local v3, "value":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 73
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v3    # "value":I
    :cond_2
    new-instance v4, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    invoke-direct {v4, v2, v0}, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public getIndicatorList()Lcom/google/glass/bluetooth/handsfree/IndicatorList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->indicatorList:Lcom/google/glass/bluetooth/handsfree/IndicatorList;

    return-object v0
.end method

.method public isWellFormed()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/handsfree/CindAtResult;->isWellFormed:Z

    return v0
.end method
