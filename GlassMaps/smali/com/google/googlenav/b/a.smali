.class public final Lcom/google/googlenav/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->a:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->b:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->c:Z

    .line 49
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->d:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->e:Z

    .line 51
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->f:Z

    .line 52
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->g:Z

    .line 53
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->h:Z

    .line 54
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->i:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->j:Z

    .line 56
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->k:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->l:Z

    .line 58
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->m:Z

    .line 59
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->n:Z

    .line 60
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->o:Z

    .line 61
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->p:Z

    .line 62
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->q:Z

    .line 68
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->r:Z

    .line 70
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->s:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->t:Z

    .line 74
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->u:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/google/googlenav/b/a;->b(Lcom/google/googlenav/common/io/b/a;)V

    .line 84
    return-void
.end method

.method public static b()Lcom/google/googlenav/common/io/b/a;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/e;->e:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    return-object v0
.end method

.method private b(Lcom/google/googlenav/common/io/b/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->a:Z

    .line 108
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->b:Z

    .line 110
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->c:Z

    .line 112
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->d:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 113
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->d:Z

    .line 115
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->e:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 116
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->e:Z

    .line 118
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->f:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->f:Z

    .line 120
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->g:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->g:Z

    .line 123
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->h:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    .line 124
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->h:Z

    .line 126
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->i:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    .line 127
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->i:Z

    .line 129
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->j:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    .line 130
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->j:Z

    .line 132
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->k:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 133
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->k:Z

    .line 136
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->l:Z

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 137
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->l:Z

    .line 139
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->m:Z

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 141
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->m:Z

    .line 143
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->n:Z

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 144
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->n:Z

    .line 146
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->o:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 147
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->o:Z

    .line 149
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->p:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    .line 150
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->p:Z

    .line 154
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->r:Z

    .line 157
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->q:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x12

    .line 158
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->q:Z

    .line 160
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->s:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/google/googlenav/b/a;->s:Z

    .line 162
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->u:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    .line 163
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_12
    iput-boolean v1, p0, Lcom/google/googlenav/b/a;->u:Z

    .line 166
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 108
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 110
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 113
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 116
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 118
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 121
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 124
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 127
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 130
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 133
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 137
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 141
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 144
    goto :goto_d

    :cond_e
    move v0, v2

    .line 147
    goto :goto_e

    :cond_f
    move v0, v2

    .line 150
    goto :goto_f

    :cond_10
    move v0, v2

    .line 158
    goto :goto_10

    :cond_11
    move v0, v2

    .line 160
    goto :goto_11

    :cond_12
    move v1, v2

    .line 163
    goto :goto_12
.end method


# virtual methods
.method public final a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/googlenav/b/a;->b(Lcom/google/googlenav/common/io/b/a;)V

    .line 97
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/google/googlenav/b/a;->j:Z

    return v0
.end method
