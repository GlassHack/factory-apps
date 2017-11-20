.class public final Lcom/google/maps/api/android/lib6/gmm6/h/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

.field private final b:D

.field private final c:D


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/h/a;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->b:D

    invoke-virtual {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    return-void
.end method


# virtual methods
.method public final a([I[I)I
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    const/4 v5, 0x1

    aget v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    const/4 v7, 0x1

    aget v7, p2, v7

    invoke-virtual {v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    const/4 v7, 0x1

    aget v7, p2, v7

    invoke-virtual {v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->b:D

    cmpl-double v6, v6, v2

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    cmpl-double v6, v6, v4

    if-nez v6, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->b:D

    cmpl-double v6, v6, v18

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    cmpl-double v6, v6, v20

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    invoke-static/range {v2 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v6

    if-ltz v6, :cond_2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    invoke-static/range {v2 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    cmpg-double v6, v4, v6

    if-gez v6, :cond_4

    :cond_2
    const/4 v6, 0x1

    move v14, v6

    :goto_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->b:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    invoke-static/range {v6 .. v13}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v6

    if-ltz v6, :cond_3

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->b:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    invoke-static/range {v6 .. v13}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v6

    if-gez v6, :cond_5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    cmpg-double v6, v20, v6

    if-gez v6, :cond_5

    :cond_3
    const/4 v6, 0x1

    :goto_2
    if-ne v14, v6, :cond_9

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/maps/api/android/lib6/gmm6/h/b;->c:D

    move-wide/from16 v10, v18

    move-wide/from16 v12, v20

    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-static/range {v6 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_7

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    invoke-static/range {v2 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    move v14, v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_7
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-lez v2, :cond_8

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v14, :cond_a

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a([I[I)I

    move-result v0

    return v0
.end method
