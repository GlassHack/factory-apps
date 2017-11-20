.class public final Lcom/google/h/a/b/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:D


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/h/a/b/b/g;->a:I

    .line 25
    iput p2, p0, Lcom/google/h/a/b/b/g;->b:I

    .line 26
    int-to-double v0, p1

    invoke-static {v0, v1}, Lcom/google/h/a/b/a/a;->b(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/h/a/b/b/g;->c:D

    .line 27
    return-void
.end method


# virtual methods
.method public final a(DD)D
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p0, p3, p4}, Lcom/google/h/a/b/b/g;->a(D)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/google/h/a/b/a/a;->b(D)D

    move-result-wide v0

    .line 76
    iget-wide v2, p0, Lcom/google/h/a/b/b/g;->c:D

    div-double/2addr v0, v2

    .line 77
    mul-double/2addr v0, p1

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final a(DLcom/google/h/a/b/b/g;)D
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p3, p1, p2}, Lcom/google/h/a/b/b/g;->b(D)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/h/a/b/b/g;->b(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)D
    .locals 4

    .prologue
    .line 40
    iget v0, p0, Lcom/google/h/a/b/b/g;->a:I

    sub-int v0, p1, v0

    int-to-double v0, v0

    const-wide v2, 0x40fb2151d0ca9d81L    # 111125.11347447896

    mul-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final a(D)I
    .locals 5

    .prologue
    .line 33
    iget v0, p0, Lcom/google/h/a/b/b/g;->a:I

    const-wide v2, 0x40567f46328ec073L    # 89.98865951481439

    mul-double/2addr v2, p1

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(DLcom/google/h/a/b/b/g;)D
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p3, p1, p2}, Lcom/google/h/a/b/b/g;->a(D)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/h/a/b/b/g;->a(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)D
    .locals 4

    .prologue
    .line 54
    iget v0, p0, Lcom/google/h/a/b/b/g;->b:I

    sub-int v0, p1, v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/h/a/b/b/g;->c:D

    mul-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(D)I
    .locals 7

    .prologue
    .line 47
    iget v0, p0, Lcom/google/h/a/b/b/g;->b:I

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lcom/google/h/a/b/b/g;->c:D

    div-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method
