.class public final Lcom/google/m/b/a/e/o;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:Z

.field public b:Lcom/google/m/b/a/e/n;

.field c:Z

.field public d:Lcom/google/protobuf/a/a;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    .line 450
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/o;->d:Lcom/google/protobuf/a/a;

    .line 489
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/e/o;->e:I

    .line 425
    return-void
.end method

.method public static a([B)Lcom/google/m/b/a/e/o;
    .locals 2

    .prologue
    .line 545
    new-instance v0, Lcom/google/m/b/a/e/o;

    invoke-direct {v0}, Lcom/google/m/b/a/e/o;-><init>()V

    array-length v1, p0

    invoke-super {v0, p0, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/e/o;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/google/m/b/a/e/o;->e:I

    if-gez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/google/m/b/a/e/o;->b()I

    .line 496
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/e/o;->e:I

    return v0
.end method

.method public final a(Lcom/google/m/b/a/e/n;)Lcom/google/m/b/a/e/o;
    .locals 1

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 437
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/o;->a:Z

    .line 438
    iput-object p1, p0, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    .line 439
    return-object p0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/o;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/o;->c:Z

    .line 455
    iput-object p1, p0, Lcom/google/m/b/a/e/o;->d:Lcom/google/protobuf/a/a;

    .line 456
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 422
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
    new-instance v0, Lcom/google/m/b/a/e/n;

    invoke-direct {v0}, Lcom/google/m/b/a/e/n;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/o;->a(Lcom/google/m/b/a/e/n;)Lcom/google/m/b/a/e/o;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/o;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/o;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/google/m/b/a/e/o;->a:Z

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/e/o;->c:Z

    if-eqz v0, :cond_1

    .line 485
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/e/o;->d:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 487
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    iget-boolean v1, p0, Lcom/google/m/b/a/e/o;->a:Z

    if-eqz v1, :cond_0

    .line 503
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/o;->b:Lcom/google/m/b/a/e/n;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 506
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/e/o;->c:Z

    if-eqz v1, :cond_1

    .line 507
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/e/o;->d:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_1
    iput v0, p0, Lcom/google/m/b/a/e/o;->e:I

    .line 511
    return v0
.end method
