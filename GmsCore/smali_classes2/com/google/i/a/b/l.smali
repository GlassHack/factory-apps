.class public final Lcom/google/i/a/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:F

.field private static final k:Ljava/util/Comparator;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final h:D

.field i:D

.field j:D

.field private final l:Lcom/google/i/a/b/n;

.field private m:Ljava/lang/String;

.field private final n:Ljava/util/Map;

.field private final o:Ljava/util/Map;

.field private final p:Ljava/util/Map;

.field private final q:Ljava/util/Map;

.field private final r:Ljava/util/Map;

.field private final s:Ljava/util/List;

.field private t:Lcom/google/android/location/f/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/i/a/b/l;->a:F

    .line 59
    new-instance v0, Lcom/google/i/a/b/m;

    invoke-direct {v0}, Lcom/google/i/a/b/m;-><init>()V

    sput-object v0, Lcom/google/i/a/b/l;->k:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/i/a/b/n;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i/a/b/l;->n:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i/a/b/l;->o:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i/a/b/l;->p:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i/a/b/l;->q:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i/a/b/l;->r:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i/a/b/l;->s:Ljava/util/List;

    .line 87
    const/16 v0, 0x19

    iput v0, p0, Lcom/google/i/a/b/l;->b:I

    .line 88
    iput v1, p0, Lcom/google/i/a/b/l;->c:I

    .line 89
    iput v1, p0, Lcom/google/i/a/b/l;->d:I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/i/a/b/l;->e:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/i/a/b/l;->f:I

    .line 92
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/i/a/b/l;->g:I

    .line 93
    const-wide v0, -0x10000000000001L

    iput-wide v0, p0, Lcom/google/i/a/b/l;->h:D

    .line 94
    const-wide v0, -0x3fa8c00000000000L    # -93.0

    iput-wide v0, p0, Lcom/google/i/a/b/l;->i:D

    .line 95
    sget v0, Lcom/google/i/a/b/l;->a:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/i/a/b/l;->j:D

    .line 101
    iput-object p1, p0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    .line 102
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lcom/google/android/location/f/be;
    .locals 18

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    invoke-virtual {v2}, Lcom/google/i/a/b/n;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/i/a/b/l;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->m:Ljava/lang/String;

    const-string v3, "(?=[^0-9.-])"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/i/a/b/l;->b:I

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :sswitch_1
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/i/a/b/l;->c:I

    goto :goto_1

    :sswitch_2
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/i/a/b/l;->d:I

    goto :goto_1

    :sswitch_3
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/i/a/b/l;->e:I

    goto :goto_1

    :sswitch_4
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/i/a/b/l;->f:I

    goto :goto_1

    :sswitch_5
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/i/a/b/l;->i:D

    goto :goto_1

    :sswitch_6
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/i/a/b/l;->j:D

    goto :goto_1

    :sswitch_7
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/i/a/b/l;->g:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->n:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/i/a/b/l;->o:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/i/a/b/n;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/i/a/b/l;->c:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    invoke-virtual {v2}, Lcom/google/i/a/b/n;->e()V

    .line 120
    const/4 v2, 0x0

    .line 214
    :goto_3
    return-object v2

    .line 118
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->o:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/i/a/b/l;->p:Ljava/util/Map;

    invoke-virtual {v2, v3, v4}, Lcom/google/i/a/b/n;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/i/a/b/l;->d:I

    if-lt v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    invoke-virtual {v2}, Lcom/google/i/a/b/n;->e()V

    .line 130
    const/4 v2, 0x0

    goto :goto_3

    .line 128
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 134
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/i/a/b/l;->t:Lcom/google/android/location/f/ai;

    .line 138
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 143
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 144
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Map$Entry;

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/i/a/b/l;->r:Ljava/util/Map;

    invoke-virtual {v3, v2, v5}, Lcom/google/i/a/b/n;->a(Ljava/util/Set;Ljava/util/Map;)I

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->r:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/i/a/b/l;->e:I

    if-lt v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_7

    .line 152
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 151
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 157
    :cond_7
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->n:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v5, v2

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/i/a/b/l;->o:Ljava/util/Map;

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/i/a/b/o;

    iget-object v3, v3, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/i/a/b/l;->i:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/i/a/b/l;->j:D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->r:Ljava/util/Map;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/g/a/b/b/a;

    if-eqz v3, :cond_8

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v8

    float-to-double v10, v8

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lcom/google/g/a/b/b/a;->e(I)F

    move-result v3

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->r:Ljava/util/Map;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v16, v0

    sub-double v10, v16, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v10

    mul-double v10, v10, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    div-double v10, v10, v16

    sub-double/2addr v8, v10

    add-double/2addr v6, v8

    goto :goto_9

    :cond_9
    move v2, v5

    move v5, v2

    goto/16 :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/i/a/b/l;->f:I

    if-lt v5, v2, :cond_c

    const/4 v2, 0x1

    :goto_a
    if-nez v2, :cond_b

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 160
    :cond_b
    const-wide v2, -0x10000000000001L

    cmpl-double v2, v6, v2

    if-ltz v2, :cond_d

    const/4 v2, 0x1

    :goto_b
    if-nez v2, :cond_e

    .line 161
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_6

    .line 157
    :cond_c
    const/4 v2, 0x0

    goto :goto_a

    .line 160
    :cond_d
    const/4 v2, 0x0

    goto :goto_b

    .line 166
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->s:Ljava/util/List;

    new-instance v3, Lcom/google/android/location/f/ai;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/i/a/b/l;->o:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/location/f/ai;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 171
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->t:Lcom/google/android/location/f/ai;

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    const/4 v2, 0x1

    :goto_c
    if-nez v2, :cond_12

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    invoke-virtual {v2}, Lcom/google/i/a/b/n;->e()V

    .line 173
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 171
    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 177
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->s:Ljava/util/List;

    sget-object v3, Lcom/google/i/a/b/l;->k:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->s:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/ai;

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->t:Lcom/google/android/location/f/ai;

    if-eqz v3, :cond_13

    iget-object v3, v2, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->t:Lcom/google/android/location/f/ai;

    iget-object v3, v3, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-lez v3, :cond_14

    .line 188
    :cond_13
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/i/a/b/l;->t:Lcom/google/android/location/f/ai;

    .line 192
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/ai;

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->q:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/i/a/b/l;->b:I

    if-gt v3, v4, :cond_17

    .line 196
    iget-object v2, v2, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/i/a/b/o;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->p:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x0

    move v5, v4

    :goto_d
    const/4 v4, 0x4

    if-ge v5, v4, :cond_15

    iget-object v4, v2, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v4}, Lcom/google/g/a/b/b/a;->a()Lcom/google/g/a/b/b/a;

    move-result-object v7

    const/4 v4, 0x3

    invoke-virtual {v7, v4}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v8

    const/4 v4, 0x3

    invoke-static {v8, v9, v5}, Lcom/google/i/a/b/t;->a(JI)J

    move-result-wide v10

    invoke-virtual {v7, v4, v10, v11}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/i/a/b/o;

    iget-object v4, v4, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v4}, Lcom/google/g/a/b/b/a;->a()Lcom/google/g/a/b/b/a;

    move-result-object v4

    const/4 v12, 0x3

    invoke-virtual {v4, v12, v8, v9}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    new-instance v12, Lcom/google/i/a/b/o;

    invoke-direct {v12, v4}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    invoke-interface {v10, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/i/a/b/l;->q:Ljava/util/Map;

    new-instance v8, Lcom/google/i/a/b/o;

    invoke-direct {v8, v7}, Lcom/google/i/a/b/o;-><init>(Lcom/google/g/a/b/b/a;)V

    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_d

    .line 200
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->p:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/i/a/b/l;->q:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_5

    .line 205
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->t:Lcom/google/android/location/f/ai;

    iget-object v2, v2, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/i/a/b/o;

    iget-object v2, v2, Lcom/google/i/a/b/o;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/i/a/b/t;->a(J)[J

    move-result-object v2

    .line 208
    new-instance v4, Lcom/google/android/location/f/ak;

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    long-to-int v3, v6

    const/4 v5, 0x1

    aget-wide v6, v2, v5

    long-to-int v2, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/i/a/b/l;->g:I

    invoke-direct {v4, v3, v2, v5}, Lcom/google/android/location/f/ak;-><init>(III)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/i/a/b/l;->l:Lcom/google/i/a/b/n;

    invoke-virtual {v2}, Lcom/google/i/a/b/n;->e()V

    .line 214
    new-instance v2, Lcom/google/android/location/f/be;

    const/4 v3, 0x4

    sget-object v5, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/location/f/be;-><init>(ILcom/google/android/location/f/ak;Lcom/google/android/location/f/aa;JLcom/google/android/location/f/bh;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_7
        0x63 -> :sswitch_0
        0x6d -> :sswitch_4
        0x70 -> :sswitch_1
        0x73 -> :sswitch_6
        0x74 -> :sswitch_2
        0x75 -> :sswitch_5
        0x77 -> :sswitch_3
    .end sparse-switch
.end method
