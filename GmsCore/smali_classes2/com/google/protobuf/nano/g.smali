.class final Lcom/google/protobuf/nano/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field private b:Lcom/google/protobuf/nano/e;

.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/g;->a:Ljava/util/List;

    .line 55
    return-void
.end method

.method private b()[B
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/nano/g;->a()I

    move-result v0

    new-array v0, v0, [B

    .line 168
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v1

    .line 169
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/g;->a(Lcom/google/protobuf/nano/b;)V

    .line 170
    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 4

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->b:Lcom/google/protobuf/nano/e;

    iget-object v1, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/e;->a(Ljava/lang/Object;)I

    move-result v1

    .line 90
    :cond_0
    return v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/l;

    .line 87
    iget v3, v0, Lcom/google/protobuf/nano/l;->a:I

    invoke-static {v3}, Lcom/google/protobuf/nano/b;->d(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iget-object v0, v0, Lcom/google/protobuf/nano/l;->b:[B

    array-length v0, v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    .line 88
    goto :goto_0
.end method

.method final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->b:Lcom/google/protobuf/nano/e;

    iget-object v1, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/nano/e;->a(Ljava/lang/Object;Lcom/google/protobuf/nano/b;)V

    .line 101
    :cond_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/l;

    .line 98
    iget v2, v0, Lcom/google/protobuf/nano/l;->a:I

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/b;->c(I)V

    iget-object v0, v0, Lcom/google/protobuf/nano/l;->b:[B

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/b;->c([B)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 106
    const/4 v0, 0x1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    instance-of v1, p1, Lcom/google/protobuf/nano/g;

    if-eqz v1, :cond_0

    .line 112
    check-cast p1, Lcom/google/protobuf/nano/g;

    .line 113
    iget-object v1, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 117
    iget-object v1, p0, Lcom/google/protobuf/nano/g;->b:Lcom/google/protobuf/nano/e;

    iget-object v2, p1, Lcom/google/protobuf/nano/g;->b:Lcom/google/protobuf/nano/e;

    if-ne v1, v2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->b:Lcom/google/protobuf/nano/e;

    iget-object v0, v0, Lcom/google/protobuf/nano/e;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_7

    .line 133
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto/16 :goto_0

    .line 134
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_8

    .line 135
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto/16 :goto_0

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->c:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 140
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->a:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/protobuf/nano/g;->a:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 142
    iget-object v0, p0, Lcom/google/protobuf/nano/g;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/protobuf/nano/g;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 146
    :cond_a
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;->b()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/protobuf/nano/g;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;->b()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 163
    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
