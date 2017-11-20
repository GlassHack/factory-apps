.class final Lcom/google/android/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:Z

.field final synthetic e:Lcom/google/android/a/d;


# direct methods
.method constructor <init>(Lcom/google/android/a/d;I)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/a/e;->e:Lcom/google/android/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/e;->d:Z

    .line 44
    iput p2, p0, Lcom/google/android/a/e;->a:I

    .line 45
    invoke-virtual {p1}, Lcom/google/android/a/d;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/e;->b:I

    .line 46
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/a/e;->c:I

    iget v1, p0, Lcom/google/android/a/e;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/a/e;->e:Lcom/google/android/a/d;

    iget v1, p0, Lcom/google/android/a/e;->c:I

    iget v2, p0, Lcom/google/android/a/e;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/d;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 56
    iget v1, p0, Lcom/google/android/a/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/a/e;->c:I

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/a/e;->d:Z

    .line 58
    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/a/e;->d:Z

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iget v0, p0, Lcom/google/android/a/e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/e;->c:I

    .line 67
    iget v0, p0, Lcom/google/android/a/e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/e;->b:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/e;->d:Z

    .line 69
    iget-object v0, p0, Lcom/google/android/a/e;->e:Lcom/google/android/a/d;

    iget v1, p0, Lcom/google/android/a/e;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/a/d;->a(I)V

    .line 70
    return-void
.end method
