.class public final Lcom/google/c/f/e;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:Lcom/google/c/f/k;

.field public d:Lcom/google/c/f/j;

.field public e:Lcom/google/c/f/h;

.field public f:Lcom/google/c/f/d;

.field public g:Lcom/google/c/f/c;

.field public h:Lcom/google/c/f/l;

.field public i:Lcom/google/c/f/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/c/f/e;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/f/e;->b:I

    iput-object v2, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    iput-object v2, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    iput-object v2, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    iput-object v2, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    iput-object v2, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    iput-object v2, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    iput-object v2, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/e;->G:I

    .line 61
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    if-eqz v1, :cond_0

    .line 218
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_0
    iget v1, p0, Lcom/google/c/f/e;->b:I

    if-eqz v1, :cond_1

    .line 222
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/c/f/e;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    if-eqz v1, :cond_2

    .line 226
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    if-eqz v1, :cond_3

    .line 230
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    if-eqz v1, :cond_4

    .line 234
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    if-eqz v1, :cond_5

    .line 238
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_5
    iget-wide v2, p0, Lcom/google/c/f/e;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 242
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/c/f/e;->a:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_6
    iget-object v1, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    if-eqz v1, :cond_7

    .line 246
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_7
    iget-object v1, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    if-eqz v1, :cond_8

    .line 250
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_8
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 8
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
    iget-object v0, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/b;

    invoke-direct {v0}, Lcom/google/c/f/b;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/c/f/e;->b:I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/c/f/j;

    invoke-direct {v0}, Lcom/google/c/f/j;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/c/f/k;

    invoke-direct {v0}, Lcom/google/c/f/k;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    :cond_3
    iget-object v0, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/c/f/h;

    invoke-direct {v0}, Lcom/google/c/f/h;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    :cond_4
    iget-object v0, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/c/f/d;

    invoke-direct {v0}, Lcom/google/c/f/d;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    :cond_5
    iget-object v0, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/c/f/e;->a:J

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/c/f/c;

    invoke-direct {v0}, Lcom/google/c/f/c;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    :cond_6
    iget-object v0, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/c/f/l;

    invoke-direct {v0}, Lcom/google/c/f/l;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    :cond_7
    iget-object v0, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 187
    :cond_0
    iget v0, p0, Lcom/google/c/f/e;->b:I

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/c/f/e;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    if-eqz v0, :cond_2

    .line 191
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    if-eqz v0, :cond_3

    .line 194
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    if-eqz v0, :cond_4

    .line 197
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    if-eqz v0, :cond_5

    .line 200
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 202
    :cond_5
    iget-wide v0, p0, Lcom/google/c/f/e;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 203
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/c/f/e;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    if-eqz v0, :cond_7

    .line 206
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 208
    :cond_7
    iget-object v0, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    if-eqz v0, :cond_8

    .line 209
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 211
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 212
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    if-ne p1, p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/e;

    if-nez v2, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    check-cast p1, Lcom/google/c/f/e;

    .line 86
    iget-wide v2, p0, Lcom/google/c/f/e;->a:J

    iget-wide v4, p1, Lcom/google/c/f/e;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    iget v2, p0, Lcom/google/c/f/e;->b:I

    iget v3, p1, Lcom/google/c/f/e;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    iget-object v2, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    if-nez v2, :cond_5

    .line 93
    iget-object v2, p1, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    if-eqz v2, :cond_6

    move v0, v1

    .line 94
    goto :goto_0

    .line 97
    :cond_5
    iget-object v2, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    iget-object v3, p1, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    invoke-virtual {v2, v3}, Lcom/google/c/f/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 98
    goto :goto_0

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    if-nez v2, :cond_7

    .line 102
    iget-object v2, p1, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    if-eqz v2, :cond_8

    move v0, v1

    .line 103
    goto :goto_0

    .line 106
    :cond_7
    iget-object v2, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    iget-object v3, p1, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    invoke-virtual {v2, v3}, Lcom/google/c/f/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 107
    goto :goto_0

    .line 110
    :cond_8
    iget-object v2, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    if-nez v2, :cond_9

    .line 111
    iget-object v2, p1, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    if-eqz v2, :cond_a

    move v0, v1

    .line 112
    goto :goto_0

    .line 115
    :cond_9
    iget-object v2, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    iget-object v3, p1, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    invoke-virtual {v2, v3}, Lcom/google/c/f/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_a
    iget-object v2, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    if-nez v2, :cond_b

    .line 120
    iget-object v2, p1, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    if-eqz v2, :cond_c

    move v0, v1

    .line 121
    goto :goto_0

    .line 124
    :cond_b
    iget-object v2, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    iget-object v3, p1, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    invoke-virtual {v2, v3}, Lcom/google/c/f/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_c
    iget-object v2, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    if-nez v2, :cond_d

    .line 129
    iget-object v2, p1, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    if-eqz v2, :cond_e

    move v0, v1

    .line 130
    goto :goto_0

    .line 133
    :cond_d
    iget-object v2, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    iget-object v3, p1, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    invoke-virtual {v2, v3}, Lcom/google/c/f/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 134
    goto/16 :goto_0

    .line 137
    :cond_e
    iget-object v2, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    if-nez v2, :cond_f

    .line 138
    iget-object v2, p1, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    if-eqz v2, :cond_10

    move v0, v1

    .line 139
    goto/16 :goto_0

    .line 142
    :cond_f
    iget-object v2, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    iget-object v3, p1, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    invoke-virtual {v2, v3}, Lcom/google/c/f/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    .line 143
    goto/16 :goto_0

    .line 146
    :cond_10
    iget-object v2, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    if-nez v2, :cond_11

    .line 147
    iget-object v2, p1, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    if-eqz v2, :cond_0

    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 151
    :cond_11
    iget-object v2, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    iget-object v3, p1, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    invoke-virtual {v2, v3}, Lcom/google/c/f/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 152
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-wide v2, p0, Lcom/google/c/f/e;->a:J

    iget-wide v4, p0, Lcom/google/c/f/e;->a:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/c/f/e;->b:I

    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 174
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    .line 178
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/e;->c:Lcom/google/c/f/k;

    invoke-virtual {v0}, Lcom/google/c/f/k;->hashCode()I

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/c/f/e;->d:Lcom/google/c/f/j;

    invoke-virtual {v0}, Lcom/google/c/f/j;->hashCode()I

    move-result v0

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/e;->e:Lcom/google/c/f/h;

    invoke-virtual {v0}, Lcom/google/c/f/h;->hashCode()I

    move-result v0

    goto :goto_2

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    invoke-virtual {v0}, Lcom/google/c/f/d;->hashCode()I

    move-result v0

    goto :goto_3

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/e;->g:Lcom/google/c/f/c;

    invoke-virtual {v0}, Lcom/google/c/f/c;->hashCode()I

    move-result v0

    goto :goto_4

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/google/c/f/e;->h:Lcom/google/c/f/l;

    invoke-virtual {v0}, Lcom/google/c/f/l;->hashCode()I

    move-result v0

    goto :goto_5

    .line 176
    :cond_6
    iget-object v1, p0, Lcom/google/c/f/e;->i:Lcom/google/c/f/b;

    invoke-virtual {v1}, Lcom/google/c/f/b;->hashCode()I

    move-result v1

    goto :goto_6
.end method
