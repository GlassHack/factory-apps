.class public abstract Lcom/google/c/c/fc;
.super Lcom/google/c/c/iw;

# interfaces
.implements Ljava/util/Set;


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x41c6666666666666L    # 7.516192768E8

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/google/c/c/fc;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/iw;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 6

    const/high16 v1, 0x40000000    # 2.0f

    sget v0, Lcom/google/c/c/fc;->a:I

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    :goto_0
    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    move v0, v1

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(I[Ljava/lang/Object;)Lcom/google/c/c/fc;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/c/c/fc;->b(I[Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/c/c/fc;
    .locals 3

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/c/c/if;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/util/Collection;)Lcom/google/c/c/fc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/google/c/c/ij;->a:Lcom/google/c/c/ij;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/c/c/fe;

    invoke-direct {v2}, Lcom/google/c/c/fe;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/c/c/fe;->a(Ljava/lang/Object;)Lcom/google/c/c/fe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/c/c/fe;->b(Ljava/util/Iterator;)Lcom/google/c/c/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fe;->a()Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/c/fc;
    .locals 1

    new-instance v0, Lcom/google/c/c/hf;

    invoke-direct {v0, p0}, Lcom/google/c/c/hf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/c/c/fc;
    .locals 2

    instance-of v0, p0, Lcom/google/c/c/fc;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/google/c/c/fk;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/c/c/fc;

    invoke-virtual {v0}, Lcom/google/c/c/fc;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/c/c/en;

    invoke-direct {v0, v1}, Lcom/google/c/c/en;-><init>(Ljava/util/EnumSet;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/c/c/ij;->a:Lcom/google/c/c/ij;

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/google/c/c/fm;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    packed-switch v1, :pswitch_data_1

    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/c/c/fc;->b(I[Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/c/c/ij;->a:Lcom/google/c/c/ij;

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static varargs b(I[Ljava/lang/Object;)Lcom/google/c/c/fc;
    .locals 12

    const/4 v4, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/c/c/fc;->a(I)I

    move-result v5

    new-array v6, v5, [Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    move v3, v4

    move v1, v4

    move v2, v4

    :goto_1
    if-ge v3, p0, :cond_1

    aget-object v0, p1, v3

    invoke-static {v0, v3}, Lcom/google/c/c/gl;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/google/c/c/it;->a(I)I

    move-result v0

    :goto_2
    and-int v10, v0, v7

    aget-object v11, v6, v10

    if-nez v11, :cond_0

    add-int/lit8 v0, v1, 0x1

    aput-object v8, p1, v1

    aput-object v8, v6, v10

    add-int v1, v2, v9

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/google/c/c/ij;->a:Lcom/google/c/c/ij;

    :goto_4
    return-object v0

    :pswitch_1
    aget-object v0, p1, v4

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    goto :goto_4

    :cond_0
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v1, p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    aget-object v1, p1, v4

    new-instance v0, Lcom/google/c/c/hf;

    invoke-direct {v0, v1, v2}, Lcom/google/c/c/hf;-><init>(Ljava/lang/Object;I)V

    goto :goto_4

    :cond_2
    invoke-static {v1}, Lcom/google/c/c/fc;->a(I)I

    move-result v0

    if-eq v5, v0, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    array-length v0, p1

    if-ge v1, v0, :cond_4

    invoke-static {p1, v1}, Lcom/google/c/c/gl;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_4
    new-instance v0, Lcom/google/c/c/gx;

    invoke-direct {v0, p1, v2, v6, v7}, Lcom/google/c/c/gx;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_4

    :cond_5
    move v0, v1

    move v1, v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d()Lcom/google/c/c/fc;
    .locals 1

    sget-object v0, Lcom/google/c/c/ij;->a:Lcom/google/c/c/ij;

    return-object v0
.end method

.method public static g()Lcom/google/c/c/fe;
    .locals 1

    new-instance v0, Lcom/google/c/c/fe;

    invoke-direct {v0}, Lcom/google/c/c/fe;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/c/c/hi;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/c/c/fc;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/c/c/fc;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/c/c/fc;

    invoke-virtual {v0}, Lcom/google/c/c/fc;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/c/c/fc;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/c/c/ha;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/fc;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method
