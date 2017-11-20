.class public final Lcom/google/c/f/n;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lcom/google/c/f/b/n;

.field public c:Lcom/google/c/f/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/google/c/f/n;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    iput-object v0, p0, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    iput-object v0, p0, Lcom/google/c/f/n;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/n;->G:I

    .line 42
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/google/c/f/n;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/n;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    if-eqz v1, :cond_1

    .line 76
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    if-eqz v1, :cond_2

    .line 80
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/n;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/n;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/b/n;

    invoke-direct {v0}, Lcom/google/c/f/b/n;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/c/f/b/d;

    invoke-direct {v0}, Lcom/google/c/f/b/d;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/c/f/n;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/c/f/n;->b:Lcom/google/c/f/b/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    if-eqz v0, :cond_2

    .line 63
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/c/f/n;->c:Lcom/google/c/f/b/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 65
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 66
    return-void
.end method
