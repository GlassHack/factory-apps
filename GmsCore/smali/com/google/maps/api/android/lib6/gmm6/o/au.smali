.class public final Lcom/google/maps/api/android/lib6/gmm6/o/au;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/o/av;

.field private final c:Ljava/util/Map;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(III)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/av;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a:Lcom/google/maps/api/android/lib6/gmm6/o/av;

    return-void
.end method

.method public static a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/o/au;
    .locals 19

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v10

    if-nez v10, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->a()V

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/o/av;

    invoke-direct {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/av;-><init>()V

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    if-ge v9, v10, :cond_b

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v11

    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v5

    if-lez v4, :cond_2

    new-array v1, v4, [I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v11, v6, v2}, Lcom/google/g/a/b/b/f;->b(II)I

    move-result v6

    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v3, 0x1

    sub-int/2addr v1, v5

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_3
    sub-int v4, v3, v5

    if-gt v2, v4, :cond_3

    add-int v4, v2, v5

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    new-instance v12, Lcom/google/maps/api/android/lib6/gmm6/o/at;

    invoke-direct {v12, v1, v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/at;-><init>([IIII)V

    const/4 v1, 0x4

    invoke-virtual {v11, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v13

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v13, :cond_a

    const/4 v1, 0x4

    invoke-virtual {v11, v1, v2}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v14

    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {v14, v3}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v14, v4}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v15

    new-instance v16, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(III)V

    const/4 v1, 0x0

    move v3, v1

    :goto_5
    if-ge v3, v15, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v14, v1, v3}, Lcom/google/g/a/b/b/f;->b(II)I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v1

    move v6, v5

    move-object v7, v8

    move v5, v4

    :goto_6
    if-gtz v1, :cond_6

    iget-object v1, v7, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a:Ljava/util/HashMap;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v7, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a:Ljava/util/HashMap;

    :cond_4
    iget-object v1, v7, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v1, -0x1

    invoke-static {v6, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a(III)I

    move-result v18

    iget-object v1, v7, Lcom/google/maps/api/android/lib6/gmm6/o/av;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/av;

    if-nez v1, :cond_7

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/maps/api/android/lib6/gmm6/o/av;

    iput-object v1, v7, Lcom/google/maps/api/android/lib6/gmm6/o/av;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/av;

    :cond_7
    iget-object v1, v7, Lcom/google/maps/api/android/lib6/gmm6/o/av;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/av;

    aget-object v1, v1, v18

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/av;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/av;-><init>()V

    iget-object v7, v7, Lcom/google/maps/api/android/lib6/gmm6/o/av;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/av;

    aput-object v1, v7, v18

    :cond_8
    move-object v7, v1

    move v1, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->b()V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/au;

    invoke-direct {v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/au;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/av;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/at;
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/at;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    :cond_2
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a:Lcom/google/maps/api/android/lib6/gmm6/o/av;

    move-object v4, p0

    :cond_3
    iget-object v5, v4, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a:Lcom/google/maps/api/android/lib6/gmm6/o/av;

    if-eq v0, v5, :cond_5

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "ZoomTableQuadTree"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No zoom table for tile type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->a:Lcom/google/maps/api/android/lib6/gmm6/o/at;

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/au;->c:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a(III)I

    move-result v5

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/av;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/av;

    if-eqz v6, :cond_6

    if-ltz v5, :cond_6

    const/4 v6, 0x3

    if-le v5, v6, :cond_7

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a:Lcom/google/maps/api/android/lib6/gmm6/o/av;

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/av;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "ZoomTableQuadTree"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No root zoom table for tile type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/at;->a:Lcom/google/maps/api/android/lib6/gmm6/o/at;

    goto :goto_1

    :cond_7
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/av;->b:[Lcom/google/maps/api/android/lib6/gmm6/o/av;

    aget-object v0, v0, v5

    goto :goto_2
.end method
