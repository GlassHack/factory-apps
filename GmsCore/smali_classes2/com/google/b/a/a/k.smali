.class public final Lcom/google/b/a/a/k;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/k;->b:Ljava/lang/String;

    .line 701
    iput-boolean v1, p0, Lcom/google/b/a/a/k;->d:Z

    .line 718
    iput v1, p0, Lcom/google/b/a/a/k;->f:I

    .line 761
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/k;->g:I

    .line 679
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/google/b/a/a/k;->g:I

    if-gez v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/google/b/a/a/k;->b()I

    .line 768
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/k;->g:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 676
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

    iput-boolean v1, p0, Lcom/google/b/a/a/k;->a:Z

    iput-object v0, p0, Lcom/google/b/a/a/k;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v1, p0, Lcom/google/b/a/a/k;->c:Z

    iput-boolean v0, p0, Lcom/google/b/a/a/k;->d:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v1, p0, Lcom/google/b/a/a/k;->e:Z

    iput v0, p0, Lcom/google/b/a/a/k;->f:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/google/b/a/a/k;->a:Z

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 753
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/k;->c:Z

    if-eqz v0, :cond_1

    .line 754
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/b/a/a/k;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 756
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/k;->e:Z

    if-eqz v0, :cond_2

    .line 757
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/a/k;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 759
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 773
    const/4 v0, 0x0

    .line 774
    iget-boolean v1, p0, Lcom/google/b/a/a/k;->a:Z

    if-eqz v1, :cond_0

    .line 775
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 778
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/k;->c:Z

    if-eqz v1, :cond_1

    .line 779
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/b/a/a/k;->d:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 782
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/a/a/k;->e:Z

    if-eqz v1, :cond_2

    .line 783
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/a/k;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 786
    :cond_2
    iput v0, p0, Lcom/google/b/a/a/k;->g:I

    .line 787
    return v0
.end method
