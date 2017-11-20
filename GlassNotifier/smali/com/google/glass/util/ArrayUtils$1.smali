.class final Lcom/google/glass/util/ArrayUtils$1;
.super Ljava/lang/Object;
.source "ArrayUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/ArrayUtils;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private pos:I

.field final synthetic val$array:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/util/ArrayUtils$1;->val$array:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/util/ArrayUtils$1;->pos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/glass/util/ArrayUtils$1;->pos:I

    iget-object v1, p0, Lcom/google/glass/util/ArrayUtils$1;->val$array:[Ljava/lang/Object;

    array-length v1, v1

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/util/ArrayUtils$1;->val$array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/glass/util/ArrayUtils$1;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/glass/util/ArrayUtils$1;->pos:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
