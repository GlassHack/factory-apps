.class public Lcom/google/glass/bluetooth/handsfree/AtResult$Range;
.super Ljava/lang/Object;
.source "AtResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/AtResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field private final high:I

.field private final low:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->low:I

    .line 54
    iput p2, p0, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->high:I

    .line 55
    return-void
.end method


# virtual methods
.method public getHigh()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->high:I

    return v0
.end method

.method public getLow()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->low:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->low:I

    iget v1, p0, Lcom/google/glass/bluetooth/handsfree/AtResult$Range;->high:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
