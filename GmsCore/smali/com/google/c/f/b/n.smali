.class public final Lcom/google/c/f/b/n;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lcom/google/c/f/b/b;

.field public c:Lcom/google/c/f/b/g;

.field public d:[Lcom/google/c/f/b/s;

.field public e:Lcom/google/c/f/b/p;

.field public f:[Lcom/google/c/f/b/j;

.field public g:Lcom/google/c/f/b/j;

.field public h:Lcom/google/c/f/b/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/google/c/f/b/n;->a:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    iput-object v1, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    invoke-static {}, Lcom/google/c/f/b/s;->b()[Lcom/google/c/f/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    iput-object v1, p0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    invoke-static {}, Lcom/google/c/f/b/j;->b()[Lcom/google/c/f/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    iput-object v1, p0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    iput-object v1, p0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    iput-object v1, p0, Lcom/google/c/f/b/n;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b/n;->G:I

    .line 59
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 118
    iget-object v2, p0, Lcom/google/c/f/b/n;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 119
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/c/f/b/n;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    if-eqz v2, :cond_1

    .line 123
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    if-eqz v2, :cond_2

    .line 127
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 131
    :goto_0
    iget-object v3, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 132
    iget-object v3, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    aget-object v3, v3, v0

    .line 133
    if-eqz v3, :cond_3

    .line 134
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 131
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 139
    :cond_5
    iget-object v2, p0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    if-eqz v2, :cond_6

    .line 140
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 143
    :cond_6
    iget-object v2, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 144
    :goto_1
    iget-object v2, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 145
    iget-object v2, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    aget-object v2, v2, v1

    .line 146
    if-eqz v2, :cond_7

    .line 147
    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 144
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_8
    iget-object v1, p0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    if-eqz v1, :cond_9

    .line 153
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_9
    iget-object v1, p0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    if-eqz v1, :cond_a

    .line 157
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_a
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/b/n;->a(Lcom/google/protobuf/nano/a;I)Z

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

    iput-object v0, p0, Lcom/google/c/f/b/n;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/b/b;

    invoke-direct {v0}, Lcom/google/c/f/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/c/f/b/g;

    invoke-direct {v0}, Lcom/google/c/f/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/c/f/b/s;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    new-instance v3, Lcom/google/c/f/b/s;

    invoke-direct {v3}, Lcom/google/c/f/b/s;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    array-length v0, v0

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/google/c/f/b/s;

    invoke-direct {v3}, Lcom/google/c/f/b/s;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/c/f/b/p;

    invoke-direct {v0}, Lcom/google/c/f/b/p;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    :cond_6
    iget-object v0, p0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/c/f/b/j;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/c/f/b/j;

    invoke-direct {v3}, Lcom/google/c/f/b/j;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    array-length v0, v0

    goto :goto_3

    :cond_9
    new-instance v3, Lcom/google/c/f/b/j;

    invoke-direct {v3}, Lcom/google/c/f/b/j;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/c/f/b/j;

    invoke-direct {v0}, Lcom/google/c/f/b/j;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    :cond_a
    iget-object v0, p0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/c/f/b/l;

    invoke-direct {v0}, Lcom/google/c/f/b/l;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    :cond_b
    iget-object v0, p0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/c/f/b/n;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/c/f/b/n;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    aget-object v2, v2, v0

    .line 90
    if-eqz v2, :cond_3

    .line 91
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    if-eqz v0, :cond_5

    .line 96
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/c/f/b/n;->e:Lcom/google/c/f/b/p;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 100
    iget-object v0, p0, Lcom/google/c/f/b/n;->f:[Lcom/google/c/f/b/j;

    aget-object v0, v0, v1

    .line 101
    if-eqz v0, :cond_6

    .line 102
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 99
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    if-eqz v0, :cond_8

    .line 107
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/c/f/b/n;->g:Lcom/google/c/f/b/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 109
    :cond_8
    iget-object v0, p0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    if-eqz v0, :cond_9

    .line 110
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/c/f/b/n;->h:Lcom/google/c/f/b/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 112
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 113
    return-void
.end method
