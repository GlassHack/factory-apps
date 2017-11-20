.class public final Lcom/google/m/b/a/e/q;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:Lcom/google/protobuf/a/a;

.field b:I

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 692
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/q;->a:Lcom/google/protobuf/a/a;

    .line 709
    const v0, 0x10001

    iput v0, p0, Lcom/google/m/b/a/e/q;->b:I

    .line 746
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/e/q;->e:I

    .line 687
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/google/m/b/a/e/q;->e:I

    if-gez v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/google/m/b/a/e/q;->b()I

    .line 753
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/e/q;->e:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/e/q;
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/q;->d:Z

    .line 714
    iput p1, p0, Lcom/google/m/b/a/e/q;->b:I

    .line 715
    return-object p0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/q;
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/q;->c:Z

    .line 697
    iput-object p1, p0, Lcom/google/m/b/a/e/q;->a:Lcom/google/protobuf/a/a;

    .line 698
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 684
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

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/q;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/q;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/q;->a(I)Lcom/google/m/b/a/e/q;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/google/m/b/a/e/q;->c:Z

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/q;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 741
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/e/q;->d:Z

    if-eqz v0, :cond_1

    .line 742
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/m/b/a/e/q;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 744
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 758
    const/4 v0, 0x0

    .line 759
    iget-boolean v1, p0, Lcom/google/m/b/a/e/q;->c:Z

    if-eqz v1, :cond_0

    .line 760
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/q;->a:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 763
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/e/q;->d:Z

    if-eqz v1, :cond_1

    .line 764
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/m/b/a/e/q;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_1
    iput v0, p0, Lcom/google/m/b/a/e/q;->e:I

    .line 768
    return v0
.end method
