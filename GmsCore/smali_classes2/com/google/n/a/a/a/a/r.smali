.class public final Lcom/google/n/a/a/a/a/r;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/r;->G:I

    .line 137
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 182
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 176
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 177
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    if-ne p1, p0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/r;

    if-nez v2, :cond_2

    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/r;

    .line 154
    iget-object v2, p0, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 155
    iget-object v2, p1, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 156
    goto :goto_0

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 159
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 169
    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
