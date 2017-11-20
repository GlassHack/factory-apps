.class public Lcom/google/glass/bluetooth/handsfree/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final range:Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

.field private value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/glass/bluetooth/handsfree/AtResult$Range;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "range"    # Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/Indicator;->name:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/google/glass/bluetooth/handsfree/Indicator;->range:Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    .line 14
    invoke-virtual {p2}, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->getLow()I

    move-result v0

    iput v0, p0, Lcom/google/glass/bluetooth/handsfree/Indicator;->value:I

    .line 15
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/Indicator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/Indicator;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/Indicator;->range:Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->getLow()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 27
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/Indicator;->range:Lcom/google/glass/bluetooth/handsfree/AtResult$Range;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->getHigh()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 28
    iput p1, p0, Lcom/google/glass/bluetooth/handsfree/Indicator;->value:I

    .line 29
    return-void
.end method
