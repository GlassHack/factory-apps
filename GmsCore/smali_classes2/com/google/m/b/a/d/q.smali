.class public final Lcom/google/m/b/a/d/q;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/a/a;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/google/protobuf/a/a;

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/d/q;->c:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/d/q;->e:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/d/q;->g:Lcom/google/protobuf/a/a;

    .line 66
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/d/q;->a:Lcom/google/protobuf/a/a;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/d/q;->i:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/m/b/a/d/q;->i:I

    if-gez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/m/b/a/d/q;->b()I

    .line 117
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/d/q;->i:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7
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

    iput-boolean v1, p0, Lcom/google/m/b/a/d/q;->b:Z

    iput-object v0, p0, Lcom/google/m/b/a/d/q;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/m/b/a/d/q;->d:Z

    iput-object v0, p0, Lcom/google/m/b/a/d/q;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/m/b/a/d/q;->f:Z

    iput-object v0, p0, Lcom/google/m/b/a/d/q;->g:Lcom/google/protobuf/a/a;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/m/b/a/d/q;->h:Z

    iput-object v0, p0, Lcom/google/m/b/a/d/q;->a:Lcom/google/protobuf/a/a;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/m/b/a/d/q;->b:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/q;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/d/q;->d:Z

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/d/q;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/d/q;->f:Z

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/d/q;->g:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 105
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/d/q;->h:Z

    if-eqz v0, :cond_3

    .line 106
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/m/b/a/d/q;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 108
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    iget-boolean v1, p0, Lcom/google/m/b/a/d/q;->b:Z

    if-eqz v1, :cond_0

    .line 124
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/q;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 127
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/d/q;->d:Z

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/d/q;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/d/q;->f:Z

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/d/q;->g:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_2
    iget-boolean v1, p0, Lcom/google/m/b/a/d/q;->h:Z

    if-eqz v1, :cond_3

    .line 136
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/m/b/a/d/q;->a:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_3
    iput v0, p0, Lcom/google/m/b/a/d/q;->i:I

    .line 140
    return v0
.end method
