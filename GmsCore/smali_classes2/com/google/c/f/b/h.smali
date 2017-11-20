.class public final Lcom/google/c/f/b/h;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/c/f/b/g;

.field public b:Lcom/google/c/f/b/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    iput-object v0, p0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    iput-object v0, p0, Lcom/google/c/f/b/h;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b/h;->G:I

    .line 125
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    if-eqz v1, :cond_1

    .line 155
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/b/h;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/b/g;

    invoke-direct {v0}, Lcom/google/c/f/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/c/f/b/g;

    invoke-direct {v0}, Lcom/google/c/f/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 144
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 145
    return-void
.end method
