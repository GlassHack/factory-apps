.class public final Lcom/google/maps/api/android/lib6/gmm6/l/cd;
.super Lcom/google/maps/api/android/lib6/gmm6/l/ce;


# instance fields
.field public a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field public b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private d:I

.field private f:I

.field private g:I

.field private volatile h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile i:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private volatile m:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/p;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gez v0, :cond_1

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d:I

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-le v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->e:Z

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->f:I

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->g:I

    return-void

    :cond_1
    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-le v0, v3, :cond_0

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    sub-int v0, v3, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/p;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/cd;
    .locals 0

    return-object p0
.end method

.method public final a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->i:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->i:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->i:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(I[Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x2

    const v2, -0x20000001

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->e:Z

    if-eqz v0, :cond_4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-direct {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v1, 0x20000000

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aput-object v0, p2, v3

    invoke-virtual {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v1, 0x20000000

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->l:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aput-object v0, p2, v4

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    invoke-direct {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->m:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aput-object v0, p2, v3

    invoke-virtual {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v3

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    .locals 2

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d:I

    add-int/2addr v0, v1

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->f:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->g:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x20000000

    const/high16 v6, -0x20000000

    const/high16 v5, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/q;->a()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-ge v3, v4, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gt v4, v3, :cond_3

    if-gt v7, v0, :cond_4

    :cond_3
    if-gt v6, v3, :cond_5

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-lt v4, v0, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-ge v3, v6, :cond_8

    add-int/2addr v3, v5

    :cond_6
    :goto_1
    if-ge v0, v6, :cond_9

    add-int/2addr v0, v5

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gt v4, v3, :cond_a

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-lt v3, v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_8
    if-lt v3, v7, :cond_6

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_9
    if-lt v0, v7, :cond_7

    sub-int/2addr v0, v5

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_0
.end method

.method public final bridge synthetic b()Lcom/google/maps/api/android/lib6/gmm6/l/q;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->e:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gt v1, v2, :cond_2

    const/high16 v1, 0x20000000

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gt v1, v2, :cond_3

    :cond_2
    const/high16 v1, -0x20000000

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a:I

    if-lt v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
