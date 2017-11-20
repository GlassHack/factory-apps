.class public abstract Lcom/google/protobuf/nano/d;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field protected F:Lcom/google/protobuf/nano/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    if-eqz v1, :cond_0

    move v1, v0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/f;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/nano/f;->b(I)Lcom/google/protobuf/nano/g;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/google/protobuf/nano/g;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 56
    :cond_1
    return v1
.end method

.method public a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/f;->b(I)Lcom/google/protobuf/nano/g;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcom/google/protobuf/nano/g;->a(Lcom/google/protobuf/nano/b;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/protobuf/nano/a;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v2

    .line 141
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/nano/m;->b(I)I

    move-result v3

    .line 145
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v0

    .line 146
    sub-int v4, v0, v2

    if-nez v4, :cond_2

    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    .line 147
    :goto_1
    new-instance v1, Lcom/google/protobuf/nano/l;

    invoke-direct {v1, p2, v0}, Lcom/google/protobuf/nano/l;-><init>(I[B)V

    .line 149
    const/4 v0, 0x0

    .line 150
    iget-object v2, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    if-nez v2, :cond_3

    .line 151
    new-instance v2, Lcom/google/protobuf/nano/f;

    invoke-direct {v2}, Lcom/google/protobuf/nano/f;-><init>()V

    iput-object v2, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    .line 155
    :goto_2
    if-nez v0, :cond_1

    .line 156
    new-instance v0, Lcom/google/protobuf/nano/g;

    invoke-direct {v0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 157
    iget-object v2, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v2, v3, v0}, Lcom/google/protobuf/nano/f;->a(ILcom/google/protobuf/nano/g;)V

    .line 159
    :cond_1
    iget-object v0, v0, Lcom/google/protobuf/nano/g;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    new-array v0, v4, [B

    iget v5, p1, Lcom/google/protobuf/nano/a;->b:I

    add-int/2addr v2, v5

    iget-object v5, p1, Lcom/google/protobuf/nano/a;->a:[B

    invoke-static {v5, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v0, v3}, Lcom/google/protobuf/nano/f;->a(I)Lcom/google/protobuf/nano/g;

    move-result-object v0

    goto :goto_2
.end method

.method protected final a(Lcom/google/protobuf/nano/d;)Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/f;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :cond_0
    iget-object v0, p1, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 172
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    iget-object v1, p1, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/d;->F:Lcom/google/protobuf/nano/f;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/f;->hashCode()I

    move-result v0

    goto :goto_0
.end method
