.class public final Lcom/google/b/a/a/i;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 837
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 842
    iput-boolean v1, p0, Lcom/google/b/a/a/i;->c:Z

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/i;->e:Ljava/lang/String;

    .line 876
    iput v1, p0, Lcom/google/b/a/a/i;->a:I

    .line 916
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/i;->g:I

    .line 837
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Lcom/google/b/a/a/i;->g:I

    if-gez v0, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/google/b/a/a/i;->b()I

    .line 923
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/i;->g:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 834
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v1, p0, Lcom/google/b/a/a/i;->b:Z

    iput-boolean v0, p0, Lcom/google/b/a/a/i;->c:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/b/a/a/i;->d:Z

    iput-object v0, p0, Lcom/google/b/a/a/i;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v1, p0, Lcom/google/b/a/a/i;->f:Z

    iput v0, p0, Lcom/google/b/a/a/i;->a:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/google/b/a/a/i;->b:Z

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/b/a/a/i;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 908
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/i;->d:Z

    if-eqz v0, :cond_1

    .line 909
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/i;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 911
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/i;->f:Z

    if-eqz v0, :cond_2

    .line 912
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/a/i;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 914
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 928
    const/4 v0, 0x0

    .line 929
    iget-boolean v1, p0, Lcom/google/b/a/a/i;->b:Z

    if-eqz v1, :cond_0

    .line 930
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/b/a/a/i;->c:Z

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x0

    .line 933
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/i;->d:Z

    if-eqz v1, :cond_1

    .line 934
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/a/i;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 937
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/a/a/i;->f:Z

    if-eqz v1, :cond_2

    .line 938
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/a/i;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 941
    :cond_2
    iput v0, p0, Lcom/google/b/a/a/i;->g:I

    .line 942
    return v0
.end method
