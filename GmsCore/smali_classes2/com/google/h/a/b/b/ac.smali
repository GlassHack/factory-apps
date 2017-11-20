.class public final Lcom/google/h/a/b/b/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[[B

.field final b:Ljava/util/ArrayList;

.field c:I

.field d:I

.field e:Lcom/google/h/a/b/b/ad;

.field private final f:Lcom/google/h/a/b/b/ag;

.field private final g:Lcom/google/h/a/b/b/af;

.field private final h:I

.field private final i:I

.field private final j:[D

.field private k:[D

.field private l:[D

.field private m:I


# direct methods
.method public constructor <init>([DLcom/google/h/a/b/b/ag;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Lcom/google/h/a/b/b/ac;->c:I

    .line 30
    iput v2, p0, Lcom/google/h/a/b/b/ac;->d:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/ac;->e:Lcom/google/h/a/b/b/ad;

    .line 100
    array-length v0, p1

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only 127 states supported (this is easy to adjust)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iput v3, p0, Lcom/google/h/a/b/b/ac;->i:I

    .line 108
    iput-object p1, p0, Lcom/google/h/a/b/b/ac;->j:[D

    .line 109
    array-length v0, p1

    iput v0, p0, Lcom/google/h/a/b/b/ac;->h:I

    .line 110
    iget v0, p0, Lcom/google/h/a/b/b/ac;->h:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/h/a/b/b/ac;->a:[[B

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/h/a/b/b/ac;->b:Ljava/util/ArrayList;

    .line 112
    iput-object p2, p0, Lcom/google/h/a/b/b/ac;->f:Lcom/google/h/a/b/b/ag;

    .line 113
    new-instance v0, Lcom/google/h/a/b/b/af;

    invoke-direct {v0, p0, v2}, Lcom/google/h/a/b/b/af;-><init>(Lcom/google/h/a/b/b/ac;B)V

    iput-object v0, p0, Lcom/google/h/a/b/b/ac;->g:Lcom/google/h/a/b/b/af;

    .line 115
    iget v0, p0, Lcom/google/h/a/b/b/ac;->h:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/h/a/b/b/ac;->k:[D

    .line 116
    iget v0, p0, Lcom/google/h/a/b/b/ac;->h:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/h/a/b/b/ac;->l:[D

    .line 118
    invoke-virtual {p0}, Lcom/google/h/a/b/b/ac;->a()V

    .line 119
    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/google/h/a/b/b/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    iput v0, p0, Lcom/google/h/a/b/b/ac;->c:I

    .line 177
    iput v0, p0, Lcom/google/h/a/b/b/ac;->d:I

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/h/a/b/b/ac;->e:Lcom/google/h/a/b/b/ad;

    .line 180
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 181
    const/4 v1, -0x1

    .line 182
    :goto_0
    iget-object v4, p0, Lcom/google/h/a/b/b/ac;->j:[D

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 183
    iget-object v4, p0, Lcom/google/h/a/b/b/ac;->j:[D

    aget-wide v4, v4, v0

    .line 184
    iget-object v6, p0, Lcom/google/h/a/b/b/ac;->k:[D

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 185
    cmpl-double v6, v4, v2

    if-lez v6, :cond_0

    move v1, v0

    move-wide v2, v4

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    iput v1, p0, Lcom/google/h/a/b/b/ac;->m:I

    .line 191
    return-void
.end method

.method public final a(Lcom/google/h/a/b/b/ad;)V
    .locals 14

    .prologue
    .line 125
    const-wide v2, -0x10000000000001L

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/a/b/b/ac;->m:I

    .line 127
    iget-object v5, p0, Lcom/google/h/a/b/b/ac;->k:[D

    .line 128
    iget-object v0, p0, Lcom/google/h/a/b/b/ac;->l:[D

    iput-object v0, p0, Lcom/google/h/a/b/b/ac;->k:[D

    .line 129
    iput-object v5, p0, Lcom/google/h/a/b/b/ac;->l:[D

    .line 130
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/h/a/b/b/ac;->h:I

    if-ge v0, v1, :cond_5

    .line 131
    const-wide v6, -0x10000000000001L

    .line 133
    invoke-interface {p1, v0}, Lcom/google/h/a/b/b/ad;->a(I)D

    move-result-wide v10

    .line 134
    const/4 v4, -0x1

    .line 135
    const/4 v1, 0x0

    :goto_1
    iget v8, p0, Lcom/google/h/a/b/b/ac;->h:I

    if-ge v1, v8, :cond_2

    .line 136
    iget-object v8, p0, Lcom/google/h/a/b/b/ac;->f:Lcom/google/h/a/b/b/ag;

    invoke-interface {v8, v1, v0}, Lcom/google/h/a/b/b/ag;->a(II)D

    move-result-wide v8

    .line 138
    add-double/2addr v8, v10

    aget-wide v12, v5, v1

    add-double/2addr v8, v12

    .line 140
    cmpl-double v12, v8, v6

    if-gtz v12, :cond_0

    const/4 v12, -0x1

    if-ne v4, v12, :cond_1

    :cond_0
    move v4, v1

    move-wide v6, v8

    .line 135
    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    .line 146
    :cond_2
    cmpl-double v1, v6, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/google/h/a/b/b/ac;->m:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 148
    :cond_3
    iput v0, p0, Lcom/google/h/a/b/b/ac;->m:I

    move-wide v2, v6

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/google/h/a/b/b/ac;->a:[[B

    aget-object v1, v1, v0

    iget v8, p0, Lcom/google/h/a/b/b/ac;->c:I

    aput-byte v4, v1, v8

    .line 151
    iget-object v1, p0, Lcom/google/h/a/b/b/ac;->k:[D

    aput-wide v6, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/google/h/a/b/b/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/h/a/b/b/ac;->c:I

    if-gt v0, v1, :cond_8

    .line 155
    iget-object v0, p0, Lcom/google/h/a/b/b/ac;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/h/a/b/b/ac;->e:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_2
    iput-object p1, p0, Lcom/google/h/a/b/b/ac;->e:Lcom/google/h/a/b/b/ad;

    .line 160
    iget v0, p0, Lcom/google/h/a/b/b/ac;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/h/a/b/b/ac;->c:I

    .line 161
    iget v0, p0, Lcom/google/h/a/b/b/ac;->c:I

    iget v1, p0, Lcom/google/h/a/b/b/ac;->i:I

    if-lt v0, v1, :cond_6

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/a/b/b/ac;->c:I

    .line 164
    :cond_6
    iget v0, p0, Lcom/google/h/a/b/b/ac;->d:I

    iget v1, p0, Lcom/google/h/a/b/b/ac;->i:I

    if-ge v0, v1, :cond_7

    .line 165
    iget v0, p0, Lcom/google/h/a/b/b/ac;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/h/a/b/b/ac;->d:I

    .line 167
    :cond_7
    return-void

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/google/h/a/b/b/ac;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/h/a/b/b/ac;->c:I

    iget-object v2, p0, Lcom/google/h/a/b/b/ac;->e:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final b()Lcom/google/h/a/b/b/ae;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/h/a/b/b/ac;->g:Lcom/google/h/a/b/b/af;

    iget v1, p0, Lcom/google/h/a/b/b/ac;->m:I

    iput v1, v0, Lcom/google/h/a/b/b/af;->c:I

    iget-object v1, v0, Lcom/google/h/a/b/b/af;->e:Lcom/google/h/a/b/b/ac;

    iget v1, v1, Lcom/google/h/a/b/b/ac;->c:I

    iput v1, v0, Lcom/google/h/a/b/b/af;->a:I

    iget-object v1, v0, Lcom/google/h/a/b/b/af;->e:Lcom/google/h/a/b/b/ac;

    iget-object v1, v1, Lcom/google/h/a/b/b/ac;->e:Lcom/google/h/a/b/b/ad;

    iput-object v1, v0, Lcom/google/h/a/b/b/af;->d:Lcom/google/h/a/b/b/ad;

    iget-object v1, v0, Lcom/google/h/a/b/b/af;->e:Lcom/google/h/a/b/b/ac;

    iget v1, v1, Lcom/google/h/a/b/b/ac;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/h/a/b/b/af;->b:I

    .line 201
    iget-object v0, p0, Lcom/google/h/a/b/b/ac;->g:Lcom/google/h/a/b/b/af;

    return-object v0
.end method
