.class abstract Lcom/google/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/google/c/a/c;

.field private b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/google/c/a/c;->b:Lcom/google/c/a/c;

    iput-object v0, p0, Lcom/google/c/a/a;->a:Lcom/google/c/a/c;

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/c/a/a;->a:Lcom/google/c/a/c;

    sget-object v3, Lcom/google/c/a/c;->d:Lcom/google/c/a/c;

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->b(Z)V

    .line 52
    sget-object v0, Lcom/google/c/a/b;->a:[I

    iget-object v3, p0, Lcom/google/c/a/a;->a:Lcom/google/c/a/c;

    invoke-virtual {v3}, Lcom/google/c/a/c;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 59
    sget-object v0, Lcom/google/c/a/c;->d:Lcom/google/c/a/c;

    iput-object v0, p0, Lcom/google/c/a/a;->a:Lcom/google/c/a/c;

    invoke-virtual {p0}, Lcom/google/c/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/a/a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/a/a;->a:Lcom/google/c/a/c;

    sget-object v3, Lcom/google/c/a/c;->c:Lcom/google/c/a/c;

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/google/c/a/c;->a:Lcom/google/c/a/c;

    iput-object v0, p0, Lcom/google/c/a/a;->a:Lcom/google/c/a/c;

    move v2, v1

    :cond_0
    :goto_1
    :pswitch_0
    return v2

    :cond_1
    move v0, v2

    .line 51
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 56
    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/c/a/a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 77
    :cond_0
    sget-object v0, Lcom/google/c/a/c;->b:Lcom/google/c/a/c;

    iput-object v0, p0, Lcom/google/c/a/a;->a:Lcom/google/c/a/c;

    .line 78
    iget-object v0, p0, Lcom/google/c/a/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
