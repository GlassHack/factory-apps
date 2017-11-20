.class public final Lcom/google/b/a/a/r;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/r;->a:Ljava/lang/String;

    .line 573
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/r;->b:Ljava/lang/String;

    .line 611
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/r;->e:I

    .line 551
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/google/b/a/a/r;->e:I

    if-gez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/google/b/a/a/r;->b()I

    .line 618
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/r;->e:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/b/a/a/r;
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/r;->c:Z

    .line 561
    iput-object p1, p0, Lcom/google/b/a/a/r;->a:Ljava/lang/String;

    .line 562
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 548
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/r;->a(Ljava/lang/String;)Lcom/google/b/a/a/r;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/r;->b(Ljava/lang/String;)Lcom/google/b/a/a/r;

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
    .line 603
    iget-boolean v0, p0, Lcom/google/b/a/a/r;->c:Z

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/r;->d:Z

    if-eqz v0, :cond_1

    .line 607
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 609
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    iget-boolean v1, p0, Lcom/google/b/a/a/r;->c:Z

    if-eqz v1, :cond_0

    .line 625
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 628
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/r;->d:Z

    if-eqz v1, :cond_1

    .line 629
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/a/r;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 632
    :cond_1
    iput v0, p0, Lcom/google/b/a/a/r;->e:I

    .line 633
    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/b/a/a/r;
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/r;->d:Z

    .line 578
    iput-object p1, p0, Lcom/google/b/a/a/r;->b:Ljava/lang/String;

    .line 579
    return-object p0
.end method
