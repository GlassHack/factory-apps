.class public final Lcom/google/android/location/activity/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[[D

.field private static final b:[D


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x6

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    const/4 v6, 0x1

    const/4 v7, 0x3

    .line 54
    const/16 v0, 0xa

    sget-object v2, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lcom/google/android/location/activity/b/f;->a:[[D

    .line 60
    sget-object v0, Lcom/google/android/location/activity/b/j;->a:[I

    array-length v0, v0

    new-array v0, v0, [D

    sput-object v0, Lcom/google/android/location/activity/b/f;->b:[D

    .line 149
    new-array v8, v3, [[D

    new-array v0, v3, [D

    fill-array-data v0, :array_0

    aput-object v0, v8, v1

    new-array v0, v3, [D

    fill-array-data v0, :array_1

    aput-object v0, v8, v6

    const/4 v0, 0x2

    new-array v2, v3, [D

    fill-array-data v2, :array_2

    aput-object v2, v8, v0

    new-array v0, v3, [D

    fill-array-data v0, :array_3

    aput-object v0, v8, v7

    const/4 v0, 0x4

    new-array v2, v3, [D

    fill-array-data v2, :array_4

    aput-object v2, v8, v0

    const/4 v0, 0x5

    new-array v2, v3, [D

    fill-array-data v2, :array_5

    aput-object v2, v8, v0

    move v0, v1

    :goto_0
    array-length v2, v8

    if-ge v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v2, 0x2

    :goto_1
    invoke-static {v8, v0}, Lcom/google/android/location/activity/b/f;->a([[DI)D

    move-result-wide v4

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v4

    add-double/2addr v10, v4

    const/4 v4, 0x5

    const-wide v12, 0x3fc999999999999aL    # 0.2

    invoke-static {v2, v4, v12, v13}, Lcom/google/android/location/activity/b/f;->a(IID)V

    move v4, v1

    :goto_2
    aget-object v5, v8, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    packed-switch v4, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_1
    move v2, v1

    goto :goto_1

    :pswitch_2
    move v2, v3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_6
    move v5, v6

    :goto_3
    aget-object v9, v8, v0

    aget-wide v12, v9, v4

    div-double/2addr v12, v10

    invoke-static {v2, v5, v12, v13}, Lcom/google/android/location/activity/b/f;->a(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_7
    move v5, v1

    goto :goto_3

    :pswitch_8
    move v5, v7

    goto :goto_3

    :pswitch_9
    const/4 v5, 0x7

    goto :goto_3

    :pswitch_a
    const/16 v5, 0x8

    goto :goto_3

    :pswitch_b
    const/4 v5, 0x4

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/location/activity/b/f;->a(IID)V

    invoke-static {v6, v6, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const/4 v0, 0x7

    invoke-static {v6, v0, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const/16 v0, 0x8

    invoke-static {v6, v0, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const-wide v4, 0x3feb333333333333L    # 0.85

    invoke-static {v6, v7, v4, v5}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const/4 v0, 0x4

    invoke-static {v6, v0, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const/4 v0, 0x5

    invoke-static {v6, v0, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    invoke-static {v7, v1, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v7, v6, v0, v1}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const/4 v0, 0x7

    invoke-static {v7, v0, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const/16 v0, 0x8

    invoke-static {v7, v0, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const-wide v0, 0x3feae147ae147ae1L    # 0.84

    invoke-static {v7, v7, v0, v1}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const/4 v0, 0x4

    invoke-static {v7, v0, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    const/4 v0, 0x5

    invoke-static {v7, v0, v14, v15}, Lcom/google/android/location/activity/b/f;->a(IID)V

    .line 151
    sget-object v0, Lcom/google/android/location/activity/b/f;->b:[D

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    sget-object v0, Lcom/google/android/location/activity/b/f;->b:[D

    const/4 v1, 0x2

    const-wide v4, 0x402bc71de69ad42cL    # 13.8889

    aput-wide v4, v0, v1

    sget-object v0, Lcom/google/android/location/activity/b/f;->b:[D

    const-wide v4, 0x402bc71de69ad42cL    # 13.8889

    aput-wide v4, v0, v7

    sget-object v0, Lcom/google/android/location/activity/b/f;->b:[D

    const/4 v1, 0x4

    const-wide v4, 0x40263851eb851eb8L    # 11.11

    aput-wide v4, v0, v1

    sget-object v0, Lcom/google/android/location/activity/b/f;->b:[D

    const/4 v1, 0x5

    const-wide v4, 0x40263851eb851eb8L    # 11.11

    aput-wide v4, v0, v1

    sget-object v0, Lcom/google/android/location/activity/b/f;->b:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v0, v3

    sget-object v0, Lcom/google/android/location/activity/b/f;->b:[D

    const/4 v1, 0x7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    .line 152
    return-void

    .line 149
    :array_0
    .array-data 8
        0x4099100000000000L    # 1604.0
        0x4070700000000000L    # 263.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
        0x401c000000000000L    # 7.0
        0x4054800000000000L    # 82.0
    .end array-data

    :array_1
    .array-data 8
        0x4067200000000000L    # 185.0
        0x40b8b30000000000L    # 6323.0
        0x4072d00000000000L    # 301.0
        0x4037000000000000L    # 23.0
        0x3ff0000000000000L    # 1.0
        0x4071200000000000L    # 274.0
    .end array-data

    :array_2
    .array-data 8
        0x401c000000000000L    # 7.0
        0x406a400000000000L    # 210.0
        0x40ad460000000000L    # 3747.0
        0x4032000000000000L    # 18.0
        0x3ff0000000000000L    # 1.0
        0x406ce00000000000L    # 231.0
    .end array-data

    :array_3
    .array-data 8
        0x4042800000000000L    # 37.0
        0x403f000000000000L    # 31.0
        0x402e000000000000L    # 15.0
        0x409b580000000000L    # 1750.0
        0x4022000000000000L    # 9.0
        0x404d800000000000L    # 59.0
    .end array-data

    :array_4
    .array-data 8
        0x4020000000000000L    # 8.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x409d100000000000L    # 1860.0
        0x4010000000000000L    # 4.0
    .end array-data

    :array_5
    .array-data 8
        0x404e800000000000L    # 61.0
        0x4071000000000000L    # 272.0
        0x404c000000000000L    # 56.0
        0x404a000000000000L    # 52.0
        0x3ff0000000000000L    # 1.0
        0x40a6ba0000000000L    # 2909.0
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method static a(ILcom/google/android/location/activity/b/g;Ljava/util/List;)D
    .locals 8

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/google/android/location/activity/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-wide v0, p1, Lcom/google/android/location/activity/b/g;->b:D

    sget-object v2, Lcom/google/android/location/activity/b/f;->b:[D

    aget-wide v2, v2, p0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 80
    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    .line 91
    :goto_0
    return-wide v0

    .line 85
    :cond_0
    const-wide/16 v0, 0x0

    .line 87
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/b/h;

    .line 88
    sget-object v1, Lcom/google/android/location/activity/b/f;->a:[[D

    iget v5, v0, Lcom/google/android/location/activity/b/h;->a:I

    aget-object v1, v1, v5

    aget-wide v6, v1, p0

    iget v0, v0, Lcom/google/android/location/activity/b/h;->b:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 89
    goto :goto_1

    .line 91
    :cond_1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, v2, v0

    goto :goto_0
.end method

.method private static a([[DI)D
    .locals 6

    .prologue
    .line 232
    aget-object v0, p0, p1

    array-length v1, v0

    .line 233
    const-wide/16 v2, 0x0

    .line 234
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    aget-object v4, p0, p1

    aget-wide v4, v4, v0

    add-double/2addr v2, v4

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-wide v2
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/b/h;

    iget v2, v0, Lcom/google/android/location/activity/b/h;->a:I

    if-eq v2, v7, :cond_1

    iget v0, v0, Lcom/google/android/location/activity/b/h;->a:I

    if-ne v0, v8, :cond_0

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    .line 102
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/b/h;

    .line 105
    iget v4, v0, Lcom/google/android/location/activity/b/h;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 106
    if-nez v1, :cond_2

    .line 109
    new-instance v4, Lcom/google/android/location/activity/b/h;

    iget v0, v0, Lcom/google/android/location/activity/b/h;->b:I

    invoke-direct {v4, v7, v0}, Lcom/google/android/location/activity/b/h;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 114
    :cond_4
    iget v4, v0, Lcom/google/android/location/activity/b/h;->a:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 117
    new-instance v4, Lcom/google/android/location/activity/b/h;

    const/4 v5, 0x5

    iget v0, v0, Lcom/google/android/location/activity/b/h;->b:I

    invoke-direct {v4, v5, v0}, Lcom/google/android/location/activity/b/h;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_5
    iget v4, v0, Lcom/google/android/location/activity/b/h;->a:I

    if-ltz v4, :cond_6

    iget v4, v0, Lcom/google/android/location/activity/b/h;->a:I

    if-gt v4, v8, :cond_6

    .line 121
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_6
    sget-boolean v4, Lcom/google/android/location/j/a;->c:Z

    if-eqz v4, :cond_2

    const-string v4, "ActivityFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unrecognized activity type. The activity model likely needs to be updated to account for this new activity: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/location/activity/b/h;->a:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_7
    return-object v2
.end method

.method private static a(IID)V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/google/android/location/activity/b/f;->a:[[D

    aget-object v0, v0, p1

    aput-wide p2, v0, p0

    .line 211
    return-void
.end method
