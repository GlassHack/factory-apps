.class public final Lcom/google/b/a/a/b;
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
    .line 2771
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 2776
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    .line 2793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    .line 2831
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/b;->e:I

    .line 2771
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2834
    iget v0, p0, Lcom/google/b/a/a/b;->e:I

    if-gez v0, :cond_0

    .line 2836
    invoke-virtual {p0}, Lcom/google/b/a/a/b;->b()I

    .line 2838
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/b;->e:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/b/a/a/b;
    .locals 1

    .prologue
    .line 2780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/b;->c:Z

    .line 2781
    iput-object p1, p0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    .line 2782
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 2768
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

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/b;->a(Ljava/lang/String;)Lcom/google/b/a/a/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/b;->b(Ljava/lang/String;)Lcom/google/b/a/a/b;

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
    .line 2823
    iget-boolean v0, p0, Lcom/google/b/a/a/b;->c:Z

    if-eqz v0, :cond_0

    .line 2824
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2826
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/b;->d:Z

    if-eqz v0, :cond_1

    .line 2827
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2829
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 2843
    const/4 v0, 0x0

    .line 2844
    iget-boolean v1, p0, Lcom/google/b/a/a/b;->c:Z

    if-eqz v1, :cond_0

    .line 2845
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2848
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/b;->d:Z

    if-eqz v1, :cond_1

    .line 2849
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2852
    :cond_1
    iput v0, p0, Lcom/google/b/a/a/b;->e:I

    .line 2853
    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/b/a/a/b;
    .locals 1

    .prologue
    .line 2797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/b;->d:Z

    .line 2798
    iput-object p1, p0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    .line 2799
    return-object p0
.end method
