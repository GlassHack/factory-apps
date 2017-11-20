.class public Lcom/google/h/a/b/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/a/b/b/aa;->a:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/a/b/b/aa;->b:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/h/a/b/b/aa;->a:I

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/google/h/a/b/b/aa;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/h/a/b/b/aa;->b:F

    .line 18
    iget v0, p0, Lcom/google/h/a/b/b/aa;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/h/a/b/b/aa;->a:I

    .line 19
    iget v0, p0, Lcom/google/h/a/b/b/aa;->a:I

    if-gez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/h/a/b/b/aa;->a:I

    .line 22
    iput p1, p0, Lcom/google/h/a/b/b/aa;->b:F

    .line 24
    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/h/a/b/b/aa;->b:F

    return v0
.end method
