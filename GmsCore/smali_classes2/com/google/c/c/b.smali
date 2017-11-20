.class public abstract Lcom/google/c/c/b;
.super Lcom/google/c/c/ek;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/c/c/d;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/c/c/ek;-><init>()V

    .line 65
    sget-object v0, Lcom/google/c/c/d;->b:Lcom/google/c/c/d;

    iput-object v0, p0, Lcom/google/c/c/b;->a:Lcom/google/c/c/d;

    .line 68
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/c/c/d;->c:Lcom/google/c/c/d;

    iput-object v0, p0, Lcom/google/c/c/b;->a:Lcom/google/c/c/d;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/c/c/b;->a:Lcom/google/c/c/d;

    sget-object v3, Lcom/google/c/c/d;->d:Lcom/google/c/c/d;

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->b(Z)V

    .line 131
    sget-object v0, Lcom/google/c/c/c;->a:[I

    iget-object v3, p0, Lcom/google/c/c/b;->a:Lcom/google/c/c/d;

    invoke-virtual {v3}, Lcom/google/c/c/d;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 138
    sget-object v0, Lcom/google/c/c/d;->d:Lcom/google/c/c/d;

    iput-object v0, p0, Lcom/google/c/c/b;->a:Lcom/google/c/c/d;

    invoke-virtual {p0}, Lcom/google/c/c/b;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/b;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/b;->a:Lcom/google/c/c/d;

    sget-object v3, Lcom/google/c/c/d;->c:Lcom/google/c/c/d;

    if-eq v0, v3, :cond_0

    sget-object v0, Lcom/google/c/c/d;->a:Lcom/google/c/c/d;

    iput-object v0, p0, Lcom/google/c/c/b;->a:Lcom/google/c/c/d;

    move v2, v1

    :cond_0
    :goto_1
    :pswitch_0
    return v2

    :cond_1
    move v0, v2

    .line 130
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 135
    goto :goto_1

    .line 131
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
    .line 153
    invoke-virtual {p0}, Lcom/google/c/c/b;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 156
    :cond_0
    sget-object v0, Lcom/google/c/c/d;->b:Lcom/google/c/c/d;

    iput-object v0, p0, Lcom/google/c/c/b;->a:Lcom/google/c/c/d;

    .line 157
    iget-object v0, p0, Lcom/google/c/c/b;->b:Ljava/lang/Object;

    return-object v0
.end method
