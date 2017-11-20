.class public final Lcom/google/m/b/a/e/l;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:Lcom/google/protobuf/a/a;

.field b:Lcom/google/protobuf/a/a;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 564
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/l;->a:Lcom/google/protobuf/a/a;

    .line 581
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/l;->b:Lcom/google/protobuf/a/a;

    .line 619
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/e/l;->e:I

    .line 559
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/google/m/b/a/e/l;->e:I

    if-gez v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/google/m/b/a/e/l;->b()I

    .line 626
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/e/l;->e:I

    return v0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/l;
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/l;->c:Z

    .line 569
    iput-object p1, p0, Lcom/google/m/b/a/e/l;->a:Lcom/google/protobuf/a/a;

    .line 570
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 556
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/l;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/l;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/l;->b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/l;

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
    .line 611
    iget-boolean v0, p0, Lcom/google/m/b/a/e/l;->c:Z

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/l;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 614
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/e/l;->d:Z

    if-eqz v0, :cond_1

    .line 615
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/e/l;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 617
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 632
    iget-boolean v1, p0, Lcom/google/m/b/a/e/l;->c:Z

    if-eqz v1, :cond_0

    .line 633
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/l;->a:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 636
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/e/l;->d:Z

    if-eqz v1, :cond_1

    .line 637
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/e/l;->b:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 640
    :cond_1
    iput v0, p0, Lcom/google/m/b/a/e/l;->e:I

    .line 641
    return v0
.end method

.method public final b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/l;
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/l;->d:Z

    .line 586
    iput-object p1, p0, Lcom/google/m/b/a/e/l;->b:Lcom/google/protobuf/a/a;

    .line 587
    return-object p0
.end method
