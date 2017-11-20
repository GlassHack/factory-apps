.class Lcom/google/glass/bluetooth/handsfree/ClipAtResult;
.super Ljava/lang/Object;
.source "ClipAtResult.java"


# instance fields
.field private callerId:Ljava/lang/String;

.field private isWellFormed:Z


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
    .locals 3
    .param p1, "result"    # Lcom/google/glass/bluetooth/handsfree/AtResult;

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 18
    .local v0, "resultArray":[Ljava/lang/Object;
    array-length v1, v0

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/bluetooth/handsfree/ClipAtResult;->isWellFormed:Z

    .line 22
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/ClipAtResult;->callerId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCallerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ClipAtResult;->callerId:Ljava/lang/String;

    return-object v0
.end method

.method public isWellFormed()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/handsfree/ClipAtResult;->isWellFormed:Z

    return v0
.end method
