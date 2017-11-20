.class public final Lcom/google/android/location/h/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/Comparator;

.field private static final e:Ljava/util/Comparator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/google/android/location/h/m;

    invoke-direct {v0}, Lcom/google/android/location/h/m;-><init>()V

    sput-object v0, Lcom/google/android/location/h/l;->d:Ljava/util/Comparator;

    .line 240
    new-instance v0, Lcom/google/android/location/h/n;

    invoke-direct {v0}, Lcom/google/android/location/h/n;-><init>()V

    sput-object v0, Lcom/google/android/location/h/l;->e:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x28

    iput v0, p0, Lcom/google/android/location/h/l;->b:I

    .line 44
    const/16 v0, 0x51

    iput v0, p0, Lcom/google/android/location/h/l;->a:I

    .line 45
    iget v0, p0, Lcom/google/android/location/h/l;->a:I

    iget v1, p0, Lcom/google/android/location/h/l;->a:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/google/android/location/h/l;->c:[[D

    .line 46
    invoke-virtual {p0}, Lcom/google/android/location/h/l;->a()V

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/ak;)Lcom/google/android/location/f/am;
    .locals 22

    .prologue
    .line 95
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/location/h/l;->a:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/h/l;->a:I

    if-ge v3, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/h/l;->c:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v3

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/location/h/l;->a:I

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/h/l;->a:I

    if-ge v3, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/h/l;->c:[[D

    aget-object v6, v6, v2

    aget-wide v8, v6, v3

    div-double/2addr v8, v4

    aput-wide v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 96
    :cond_3
    new-instance v5, Ljava/util/PriorityQueue;

    const/16 v2, 0x64

    sget-object v3, Lcom/google/android/location/h/l;->e:Ljava/util/Comparator;

    invoke-direct {v5, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 100
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/location/h/l;->a:I

    if-ge v3, v2, :cond_7

    .line 101
    const/4 v2, 0x0

    move v4, v2

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/location/h/l;->a:I

    if-ge v4, v2, :cond_6

    .line 102
    new-instance v6, Lcom/google/android/location/h/o;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/h/l;->c:[[D

    aget-object v2, v2, v3

    aget-wide v8, v2, v4

    invoke-direct {v6, v3, v4, v8, v9}, Lcom/google/android/location/h/o;-><init>(IID)V

    .line 103
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    const/16 v7, 0x64

    if-ge v2, v7, :cond_5

    .line 104
    invoke-virtual {v5, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4
    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    .line 105
    :cond_5
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/h/o;

    iget-wide v8, v2, Lcom/google/android/location/h/o;->c:D

    iget-wide v10, v6, Lcom/google/android/location/h/o;->c:D

    cmpg-double v2, v8, v10

    if-gez v2, :cond_4

    .line 106
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 107
    invoke-virtual {v5, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 100
    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 112
    :cond_7
    const/16 v2, 0x64

    new-array v2, v2, [Lcom/google/android/location/h/o;

    .line 113
    invoke-virtual {v5, v2}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Lcom/google/android/location/h/o;

    .line 114
    sget-object v2, Lcom/google/android/location/h/l;->d:Ljava/util/Comparator;

    invoke-static {v10, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 117
    const-wide/16 v4, 0x0

    .line 118
    const/4 v2, 0x0

    :goto_7
    array-length v3, v10

    if-ge v2, v3, :cond_8

    const-wide v6, 0x3fd999999999999aL    # 0.4

    cmpg-double v3, v4, v6

    if-gez v3, :cond_8

    .line 120
    aget-object v3, v10, v2

    iget-wide v6, v3, Lcom/google/android/location/h/o;->c:D

    add-double/2addr v4, v6

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 126
    :cond_8
    array-length v3, v10

    const/4 v4, 0x1

    if-le v3, v4, :cond_10

    const/4 v3, 0x2

    if-lt v2, v3, :cond_10

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v10, v3

    iget-wide v4, v3, Lcom/google/android/location/h/o;->c:D

    add-int/lit8 v3, v2, -0x2

    aget-object v3, v10, v3

    iget-wide v6, v3, Lcom/google/android/location/h/o;->c:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_10

    .line 128
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v10, v3

    iget-wide v4, v3, Lcom/google/android/location/h/o;->c:D

    .line 130
    add-int/lit8 v3, v2, -0x1

    :goto_8
    if-ltz v3, :cond_9

    .line 131
    aget-object v6, v10, v3

    iget-wide v6, v6, Lcom/google/android/location/h/o;->c:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_9

    .line 132
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 135
    :cond_9
    if-ltz v3, :cond_10

    move v11, v3

    .line 141
    :goto_9
    new-array v13, v11, [D

    .line 142
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 143
    const/4 v2, 0x0

    move v12, v2

    :goto_a
    if-ge v12, v11, :cond_a

    .line 144
    aget-object v15, v10, v12

    .line 145
    iget v2, v15, Lcom/google/android/location/h/o;->b:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x400e000000000000L    # 3.75

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/location/h/l;->b:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x400e000000000000L    # 3.75

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v16, v0

    .line 146
    iget v2, v15, Lcom/google/android/location/h/o;->a:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x400e000000000000L    # 3.75

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/location/h/l;->b:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x400e000000000000L    # 3.75

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v17, v0

    .line 147
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/location/f/ak;->d:I

    int-to-double v2, v2

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double/2addr v2, v4

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/location/f/ak;->e:I

    int-to-double v4, v4

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double/2addr v4, v6

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v6, v2

    move-wide v8, v4

    invoke-static/range {v2 .. v9}, Lcom/google/android/location/h/d;->a(DDDD)D

    move-result-wide v6

    div-double v18, v18, v6

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    add-double v8, v4, v6

    move-wide v6, v2

    invoke-static/range {v2 .. v9}, Lcom/google/android/location/h/d;->a(DDDD)D

    move-result-wide v6

    div-double v6, v20, v6

    new-instance v8, Lcom/google/android/location/f/n;

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v2, v2, v18

    const-wide v18, 0x416312d000000000L    # 1.0E7

    mul-double v2, v2, v18

    double-to-int v2, v2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    const-wide v6, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v8, v2, v3}, Lcom/google/android/location/f/n;-><init>(II)V

    .line 148
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-wide v2, v15, Lcom/google/android/location/h/o;->c:D

    aput-wide v2, v13, v12

    .line 143
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_a

    .line 152
    :cond_a
    new-instance v2, Lcom/google/android/location/h/z;

    invoke-direct {v2}, Lcom/google/android/location/h/z;-><init>()V

    .line 153
    invoke-static {v14, v13}, Lcom/google/android/location/h/z;->a(Ljava/util/List;[D)Lcom/google/android/location/f/n;

    move-result-object v5

    .line 154
    if-nez v5, :cond_b

    .line 155
    const/4 v2, 0x0

    .line 188
    :goto_b
    return-object v2

    .line 159
    :cond_b
    iget v2, v5, Lcom/google/android/location/f/n;->b:I

    int-to-double v2, v2

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Lcom/google/android/location/h/d;->a(D)D

    move-result-wide v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/h/d;->b(Lcom/google/android/location/f/ak;)D

    move-result-wide v6

    sub-double/2addr v2, v6

    invoke-static {v5}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/n;)D

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    const-wide v6, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x400e000000000000L    # 3.75

    div-double/2addr v2, v6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/location/h/l;->b:I

    int-to-double v6, v4

    add-double/2addr v2, v6

    double-to-int v6, v2

    .line 163
    invoke-static {v5}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/n;)D

    move-result-wide v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;)D

    move-result-wide v8

    sub-double/2addr v2, v8

    const-wide v8, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x400e000000000000L    # 3.75

    div-double/2addr v2, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/location/h/l;->b:I

    int-to-double v8, v4

    add-double/2addr v2, v8

    double-to-int v7, v2

    .line 167
    const/high16 v3, -0x80000000

    .line 168
    const/4 v2, 0x0

    move v4, v2

    :goto_c
    if-ge v4, v11, :cond_e

    .line 169
    aget-object v2, v10, v4

    .line 170
    iget v8, v2, Lcom/google/android/location/h/o;->b:I

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 171
    iget v2, v2, Lcom/google/android/location/h/o;->a:I

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 173
    const/16 v9, 0x78

    if-ge v8, v9, :cond_c

    const/16 v9, 0x78

    if-lt v2, v9, :cond_d

    .line 175
    :cond_c
    invoke-static {v2, v8}, Lcom/google/android/location/h/g;->a(II)I

    move-result v2

    .line 180
    :goto_d
    if-le v2, v3, :cond_f

    .line 168
    :goto_e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_c

    .line 177
    :cond_d
    sget-object v9, Lcom/google/android/location/h/g;->a:[[I

    aget-object v2, v9, v2

    aget v2, v2, v8

    goto :goto_d

    .line 184
    :cond_e
    const/16 v2, 0x14

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 185
    new-instance v2, Lcom/google/android/location/f/am;

    invoke-direct {v2}, Lcom/google/android/location/f/am;-><init>()V

    .line 186
    iget v4, v5, Lcom/google/android/location/f/n;->a:I

    iget v5, v5, Lcom/google/android/location/f/n;->b:I

    invoke-virtual {v2, v4, v5}, Lcom/google/android/location/f/am;->a(II)Lcom/google/android/location/f/am;

    .line 187
    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v2, Lcom/google/android/location/f/am;->c:I

    goto/16 :goto_b

    :cond_f
    move v2, v3

    goto :goto_e

    :cond_10
    move v11, v2

    goto/16 :goto_9
.end method

.method final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 51
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/android/location/h/l;->a:I

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 52
    :goto_1
    iget v3, p0, Lcom/google/android/location/h/l;->a:I

    if-ge v2, v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/google/android/location/h/l;->c:[[D

    aget-object v3, v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public final a(IID)V
    .locals 7

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/location/h/l;->b:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/h/l;->b:I

    neg-int v0, v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/h/l;->b:I

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/location/h/l;->b:I

    neg-int v0, v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 78
    :goto_1
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_1
    iget v0, p0, Lcom/google/android/location/h/l;->b:I

    add-int/2addr v0, p1

    .line 76
    iget v1, p0, Lcom/google/android/location/h/l;->b:I

    add-int/2addr v1, p2

    .line 77
    iget-object v2, p0, Lcom/google/android/location/h/l;->c:[[D

    aget-object v0, v2, v0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, p3

    mul-double/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_1
.end method
