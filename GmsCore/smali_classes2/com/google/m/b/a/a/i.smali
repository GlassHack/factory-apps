.class public final Lcom/google/m/b/a/a/i;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2712
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 2717
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->a:Ljava/lang/String;

    .line 2734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->c:Ljava/lang/String;

    .line 2751
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->e:Ljava/lang/String;

    .line 2768
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->g:Ljava/lang/String;

    .line 2785
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->i:Ljava/lang/String;

    .line 2833
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/i;->k:I

    .line 2712
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2836
    iget v0, p0, Lcom/google/m/b/a/a/i;->k:I

    if-gez v0, :cond_0

    .line 2838
    invoke-virtual {p0}, Lcom/google/m/b/a/a/i;->b()I

    .line 2840
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/i;->k:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2709
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

    iput-boolean v1, p0, Lcom/google/m/b/a/a/i;->j:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/m/b/a/a/i;->b:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/m/b/a/a/i;->d:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/m/b/a/a/i;->f:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->g:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/m/b/a/a/i;->h:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/i;->i:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 2816
    iget-boolean v0, p0, Lcom/google/m/b/a/a/i;->j:Z

    if-eqz v0, :cond_0

    .line 2817
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2819
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/i;->b:Z

    if-eqz v0, :cond_1

    .line 2820
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2822
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/i;->d:Z

    if-eqz v0, :cond_2

    .line 2823
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/a/i;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2825
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/i;->f:Z

    if-eqz v0, :cond_3

    .line 2826
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/m/b/a/a/i;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2828
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/i;->h:Z

    if-eqz v0, :cond_4

    .line 2829
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/m/b/a/a/i;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2831
    :cond_4
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 2845
    const/4 v0, 0x0

    .line 2846
    iget-boolean v1, p0, Lcom/google/m/b/a/a/i;->j:Z

    if-eqz v1, :cond_0

    .line 2847
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2850
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/i;->b:Z

    if-eqz v1, :cond_1

    .line 2851
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/a/i;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2854
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/a/i;->d:Z

    if-eqz v1, :cond_2

    .line 2855
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/a/i;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2858
    :cond_2
    iget-boolean v1, p0, Lcom/google/m/b/a/a/i;->f:Z

    if-eqz v1, :cond_3

    .line 2859
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/m/b/a/a/i;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2862
    :cond_3
    iget-boolean v1, p0, Lcom/google/m/b/a/a/i;->h:Z

    if-eqz v1, :cond_4

    .line 2863
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/m/b/a/a/i;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2866
    :cond_4
    iput v0, p0, Lcom/google/m/b/a/a/i;->k:I

    .line 2867
    return v0
.end method
