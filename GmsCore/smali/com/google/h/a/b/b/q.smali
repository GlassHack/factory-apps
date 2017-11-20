.class public final Lcom/google/h/a/b/b/q;
.super Lcom/google/h/a/b/b/aa;
.source "SourceFile"


# instance fields
.field final a:[F

.field b:D

.field c:I

.field d:I

.field private e:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/google/h/a/b/b/aa;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/a/b/b/q;->b:D

    .line 17
    iput v2, p0, Lcom/google/h/a/b/b/q;->c:I

    .line 18
    iput v2, p0, Lcom/google/h/a/b/b/q;->d:I

    .line 21
    iput v2, p0, Lcom/google/h/a/b/b/q;->e:I

    .line 24
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/google/h/a/b/b/q;->a:[F

    .line 25
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/h/a/b/b/q;->d:I

    return v0
.end method

.method public final a(F)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 32
    iget v0, p0, Lcom/google/h/a/b/b/q;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/h/a/b/b/q;->e:I

    .line 33
    iget v0, p0, Lcom/google/h/a/b/b/q;->e:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 34
    iput v1, p0, Lcom/google/h/a/b/b/q;->e:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/h/a/b/b/q;->b:D

    iget-object v2, p0, Lcom/google/h/a/b/b/q;->a:[F

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    iget-wide v6, p0, Lcom/google/h/a/b/b/q;->b:D

    float-to-double v4, v4

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/h/a/b/b/q;->b:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iget v0, p0, Lcom/google/h/a/b/b/q;->d:I

    iget-object v2, p0, Lcom/google/h/a/b/b/q;->a:[F

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 38
    iget v0, p0, Lcom/google/h/a/b/b/q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/h/a/b/b/q;->d:I

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/google/h/a/b/b/q;->a:[F

    iget v2, p0, Lcom/google/h/a/b/b/q;->c:I

    aput p1, v0, v2

    .line 44
    iget-wide v2, p0, Lcom/google/h/a/b/b/q;->b:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/h/a/b/b/q;->b:D

    .line 46
    iget v0, p0, Lcom/google/h/a/b/b/q;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/h/a/b/b/q;->c:I

    .line 47
    iget v0, p0, Lcom/google/h/a/b/b/q;->c:I

    iget-object v2, p0, Lcom/google/h/a/b/b/q;->a:[F

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 48
    iput v1, p0, Lcom/google/h/a/b/b/q;->c:I

    .line 50
    :cond_1
    return-void

    .line 40
    :cond_2
    iget-wide v2, p0, Lcom/google/h/a/b/b/q;->b:D

    iget-object v0, p0, Lcom/google/h/a/b/b/q;->a:[F

    iget v4, p0, Lcom/google/h/a/b/b/q;->c:I

    aget v0, v0, v4

    float-to-double v4, v0

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/h/a/b/b/q;->b:D

    goto :goto_1
.end method

.method public final b()F
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/h/a/b/b/q;->b:D

    double-to-float v0, v0

    return v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/a/b/b/q;->b:D

    .line 92
    iput v2, p0, Lcom/google/h/a/b/b/q;->c:I

    .line 93
    iput v2, p0, Lcom/google/h/a/b/b/q;->d:I

    .line 94
    iput v2, p0, Lcom/google/h/a/b/b/q;->e:I

    .line 95
    return-void
.end method
