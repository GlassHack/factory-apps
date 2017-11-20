.class public final Lcom/google/a/a/a/a/a/c;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:[Lcom/google/a/a/a/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 128
    iput-object v0, p0, Lcom/google/a/a/a/a/a/c;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/a/a/a/a/a/d;->b()[Lcom/google/a/a/a/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/a/c;->G:I

    .line 129
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 161
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/a/a/a/a/a/c;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/a/c;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/google/a/a/a/a/a/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 171
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    aget-object v2, v2, v0

    .line 173
    if-eqz v2, :cond_2

    .line 174
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 171
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 179
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/c;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/c;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/a/a/a/a/a/d;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/a/a/a/a/a/d;

    invoke-direct {v3}, Lcom/google/a/a/a/a/a/d;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/a/a/a/a/a/d;

    invoke-direct {v3}, Lcom/google/a/a/a/a/a/d;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/a/a/a/a/a/c;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/a/c;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/a/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 149
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/google/a/a/a/a/a/c;->c:[Lcom/google/a/a/a/a/a/d;

    aget-object v1, v1, v0

    .line 151
    if-eqz v1, :cond_2

    .line 152
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 149
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 157
    return-void
.end method
