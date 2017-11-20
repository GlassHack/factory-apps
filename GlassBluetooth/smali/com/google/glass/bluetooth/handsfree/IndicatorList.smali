.class Lcom/google/glass/bluetooth/handsfree/IndicatorList;
.super Ljava/lang/Object;
.source "IndicatorList.java"


# instance fields
.field private final indicators:[Lcom/google/glass/bluetooth/handsfree/Indicator;


# direct methods
.method public constructor <init>([Lcom/google/glass/bluetooth/handsfree/Indicator;)V
    .locals 0
    .param p1, "indicators"    # [Lcom/google/glass/bluetooth/handsfree/Indicator;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/IndicatorList;->indicators:[Lcom/google/glass/bluetooth/handsfree/Indicator;

    .line 13
    return-void
.end method


# virtual methods
.method public getIndicator(I)Lcom/google/glass/bluetooth/handsfree/Indicator;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 16
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/IndicatorList;->indicators:[Lcom/google/glass/bluetooth/handsfree/Indicator;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/IndicatorList;->indicators:[Lcom/google/glass/bluetooth/handsfree/Indicator;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getIndicator(Ljava/lang/String;)Lcom/google/glass/bluetooth/handsfree/Indicator;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/IndicatorList;->indicators:[Lcom/google/glass/bluetooth/handsfree/Indicator;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 24
    .local v0, "i":Lcom/google/glass/bluetooth/handsfree/Indicator;
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/Indicator;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    .end local v0    # "i":Lcom/google/glass/bluetooth/handsfree/Indicator;
    :goto_1
    return-object v0

    .line 23
    .restart local v0    # "i":Lcom/google/glass/bluetooth/handsfree/Indicator;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "i":Lcom/google/glass/bluetooth/handsfree/Indicator;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
