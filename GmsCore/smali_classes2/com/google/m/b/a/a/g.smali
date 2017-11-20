.class public final Lcom/google/m/b/a/a/g;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:F

.field private c:Z

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3269
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 3274
    iput v0, p0, Lcom/google/m/b/a/a/g;->b:F

    .line 3291
    iput v0, p0, Lcom/google/m/b/a/a/g;->d:F

    .line 3327
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/g;->e:I

    .line 3269
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3330
    iget v0, p0, Lcom/google/m/b/a/a/g;->e:I

    if-gez v0, :cond_0

    .line 3332
    invoke-virtual {p0}, Lcom/google/m/b/a/a/g;->b()I

    .line 3334
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/g;->e:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3266
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput-boolean v1, p0, Lcom/google/m/b/a/a/g;->a:Z

    iput v0, p0, Lcom/google/m/b/a/a/g;->b:F

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput-boolean v1, p0, Lcom/google/m/b/a/a/g;->c:Z

    iput v0, p0, Lcom/google/m/b/a/a/g;->d:F

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x15 -> :sswitch_1
        0x1d -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 3319
    iget-boolean v0, p0, Lcom/google/m/b/a/a/g;->a:Z

    if-eqz v0, :cond_0

    .line 3320
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/m/b/a/a/g;->b:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IF)V

    .line 3322
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/g;->c:Z

    if-eqz v0, :cond_1

    .line 3323
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/m/b/a/a/g;->d:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IF)V

    .line 3325
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 3339
    const/4 v0, 0x0

    .line 3340
    iget-boolean v1, p0, Lcom/google/m/b/a/a/g;->a:Z

    if-eqz v1, :cond_0

    .line 3341
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/m/b/a/a/g;->b:F

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x0

    .line 3344
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/g;->c:Z

    if-eqz v1, :cond_1

    .line 3345
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/m/b/a/a/g;->d:F

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 3348
    :cond_1
    iput v0, p0, Lcom/google/m/b/a/a/g;->e:I

    .line 3349
    return v0
.end method
