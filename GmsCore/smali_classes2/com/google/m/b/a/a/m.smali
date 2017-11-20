.class public final Lcom/google/m/b/a/a/m;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/m/b/a/a/m;->b:I

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/m;->d:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/m;->e:I

    .line 68
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/google/m/b/a/a/m;->e:I

    if-gez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/m/b/a/a/m;->b()I

    .line 133
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/m;->e:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v1, p0, Lcom/google/m/b/a/a/m;->a:Z

    iput v0, p0, Lcom/google/m/b/a/a/m;->b:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/m/b/a/a/m;->c:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/m;->d:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/m/b/a/a/m;->a:Z

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/a/m;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/m;->c:Z

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/a/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 124
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    iget-boolean v1, p0, Lcom/google/m/b/a/a/m;->a:Z

    if-eqz v1, :cond_0

    .line 140
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/a/m;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 143
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/m;->c:Z

    if-eqz v1, :cond_1

    .line 144
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/a/m;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_1
    iput v0, p0, Lcom/google/m/b/a/a/m;->e:I

    .line 148
    return v0
.end method
