.class abstract Lcom/google/common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lcom/google/common/base/AbstractIterator$State;

.field private b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->a:Lcom/google/common/base/AbstractIterator$State;

    .line 34
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->a:Lcom/google/common/base/AbstractIterator$State;

    .line 63
    invoke-virtual {p0}, Lcom/google/common/base/AbstractIterator;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->b:Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->a:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 65
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->a:Lcom/google/common/base/AbstractIterator$State;

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->a:Lcom/google/common/base/AbstractIterator$State;

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->a:Lcom/google/common/base/AbstractIterator$State;

    sget-object v3, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    .line 51
    sget-object v0, Lcom/google/common/base/a;->a:[I

    iget-object v3, p0, Lcom/google/common/base/AbstractIterator;->a:Lcom/google/common/base/AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/common/base/AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;->c()Z

    move-result v2

    :goto_1
    :pswitch_0
    return v2

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 55
    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/common/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 75
    :cond_0
    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->a:Lcom/google/common/base/AbstractIterator$State;

    .line 76
    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
