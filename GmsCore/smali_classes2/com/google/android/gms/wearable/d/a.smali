.class public final Lcom/google/android/gms/wearable/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;[Lcom/google/android/gms/wearable/d/a/c;)I
    .locals 7

    .prologue
    const/16 v2, 0xe

    .line 268
    .line 269
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, p1, v1

    .line 270
    if-ne v0, v2, :cond_3

    .line 271
    iget v5, v4, Lcom/google/android/gms/wearable/d/a/c;->a:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/google/android/gms/wearable/d/a/c;->a:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/google/android/gms/wearable/d/a/c;->a:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 274
    :cond_0
    iget v0, v4, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :cond_2
    iget v5, v4, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-eq v5, v2, :cond_1

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected TypedValue type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/google/android/gms/wearable/d/a/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_3
    iget v5, v4, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-eq v5, v0, :cond_1

    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The ArrayList elements should all be the same type, but ArrayList with key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains items of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v4, Lcom/google/android/gms/wearable/d/a/c;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_4
    return v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/wearable/d/a/c;
    .locals 13

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/16 v5, 0xe

    .line 72
    new-instance v3, Lcom/google/android/gms/wearable/d/a/c;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/d/a/c;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    iput v5, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    move-object v0, v3

    .line 182
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/d/a/d;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/d/a/d;-><init>()V

    iput-object v1, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    .line 80
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 81
    iput v10, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 82
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    :goto_1
    move-object v0, v3

    .line 182
    goto :goto_0

    .line 83
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 84
    iput v11, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 85
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    goto :goto_1

    .line 86
    :cond_2
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 87
    const/4 v0, 0x5

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 88
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    goto :goto_1

    .line 89
    :cond_3
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 90
    const/4 v0, 0x3

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 91
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    goto :goto_1

    .line 92
    :cond_4
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 93
    const/4 v0, 0x4

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 94
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    goto :goto_1

    .line 95
    :cond_5
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 96
    const/16 v0, 0x8

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 97
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    goto :goto_1

    .line 98
    :cond_6
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 99
    const/4 v0, 0x7

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 100
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput v1, v0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    goto :goto_1

    .line 101
    :cond_7
    instance-of v1, p1, [B

    if-eqz v1, :cond_8

    .line 102
    const/4 v0, 0x1

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 103
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, [B

    iput-object p1, v0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    goto :goto_1

    .line 104
    :cond_8
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 105
    const/16 v0, 0xb

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 106
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    goto/16 :goto_1

    .line 107
    :cond_9
    instance-of v1, p1, [J

    if-eqz v1, :cond_a

    .line 108
    const/16 v0, 0xc

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 109
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, [J

    iput-object p1, v0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    goto/16 :goto_1

    .line 110
    :cond_a
    instance-of v1, p1, [F

    if-eqz v1, :cond_b

    .line 111
    const/16 v0, 0xf

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 112
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, [F

    iput-object p1, v0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    goto/16 :goto_1

    .line 113
    :cond_b
    instance-of v1, p1, Lcom/google/android/gms/wearable/Asset;

    if-eqz v1, :cond_c

    .line 114
    const/16 v0, 0xd

    iput v0, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 115
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    check-cast p1, Lcom/google/android/gms/wearable/Asset;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    iput-wide v4, v0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    goto/16 :goto_1

    .line 116
    :cond_c
    instance-of v1, p1, Lcom/google/android/gms/wearable/m;

    if-eqz v1, :cond_e

    .line 117
    iput v12, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 121
    check-cast p1, Lcom/google/android/gms/wearable/m;

    .line 122
    iget-object v1, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/wearable/d/a/b;

    .line 128
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    new-instance v5, Lcom/google/android/gms/wearable/d/a/b;

    invoke-direct {v5}, Lcom/google/android/gms/wearable/d/a/b;-><init>()V

    aput-object v5, v2, v1

    .line 130
    aget-object v5, v2, v1

    iput-object v0, v5, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    .line 131
    aget-object v5, v2, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/wearable/d/a;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/wearable/d/a/c;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 133
    goto :goto_2

    .line 134
    :cond_d
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    iput-object v2, v0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    goto/16 :goto_1

    .line 136
    :cond_e
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    .line 144
    const/16 v1, 0xa

    iput v1, v3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 145
    check-cast p1, Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [Lcom/google/android/gms/wearable/d/a/c;

    .line 153
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v0

    move v2, v5

    :goto_3
    if-ge v4, v7, :cond_11

    .line 156
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 157
    invoke-static {p0, v0}, Lcom/google/android/gms/wearable/d/a;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/wearable/d/a/c;

    move-result-object v8

    .line 158
    iget v9, v8, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-eq v9, v5, :cond_f

    iget v9, v8, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-eq v9, v10, :cond_f

    iget v9, v8, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-eq v9, v11, :cond_f

    iget v9, v8, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-eq v9, v12, :cond_f

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_f
    if-ne v2, v5, :cond_10

    iget v9, v8, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-eq v9, v5, :cond_10

    .line 168
    iget v1, v8, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 175
    :goto_4
    aput-object v8, v6, v4

    .line 155
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_3

    .line 170
    :cond_10
    iget v9, v8, Lcom/google/android/gms/wearable/d/a/c;->a:I

    if-eq v9, v2, :cond_13

    .line 171
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ArrayList elements must all be of the sameclass, but this one contains a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_11
    iget-object v0, v3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    iput-object v6, v0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    goto/16 :goto_1

    .line 179
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newFieldValueFromValue: unexpected value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v0, v1

    move v1, v2

    goto :goto_4
.end method

.method public static a(Lcom/google/android/gms/wearable/m;)Lcom/google/android/gms/wearable/d/b;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/wearable/d/a/a;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/d/a/a;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {p0, v1}, Lcom/google/android/gms/wearable/d/a;->a(Lcom/google/android/gms/wearable/m;Ljava/util/List;)[Lcom/google/android/gms/wearable/d/a/b;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/wearable/d/a/a;->a:[Lcom/google/android/gms/wearable/d/a/b;

    .line 39
    new-instance v2, Lcom/google/android/gms/wearable/d/b;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/wearable/d/b;-><init>(Lcom/google/android/gms/wearable/d/a/a;Ljava/util/List;)V

    .line 40
    return-object v2
.end method

.method public static a(Lcom/google/android/gms/wearable/d/b;)Lcom/google/android/gms/wearable/m;
    .locals 7

    .prologue
    .line 49
    new-instance v1, Lcom/google/android/gms/wearable/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/m;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/b;->a:Lcom/google/android/gms/wearable/d/a/a;

    iget-object v2, v0, Lcom/google/android/gms/wearable/d/a/a;->a:[Lcom/google/android/gms/wearable/d/a/b;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 51
    iget-object v5, p0, Lcom/google/android/gms/wearable/d/b;->b:Ljava/util/List;

    iget-object v6, v4, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    invoke-static {v5, v1, v6, v4}, Lcom/google/android/gms/wearable/d/a;->a(Ljava/util/List;Lcom/google/android/gms/wearable/m;Ljava/lang/String;Lcom/google/android/gms/wearable/d/a/c;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/util/List;Lcom/google/android/gms/wearable/d/a/d;I)Ljava/util/ArrayList;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 299
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    iget-object v4, p1, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v0, v4, v2

    .line 301
    iget v6, v0, Lcom/google/android/gms/wearable/d/a/c;->a:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_0

    .line 302
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 303
    :cond_0
    const/16 v6, 0x9

    if-ne p2, v6, :cond_2

    .line 304
    new-instance v6, Lcom/google/android/gms/wearable/m;

    invoke-direct {v6}, Lcom/google/android/gms/wearable/m;-><init>()V

    .line 305
    iget-object v0, v0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    iget-object v7, v0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    .line 306
    array-length v8, v7

    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_1

    aget-object v9, v7, v0

    .line 307
    iget-object v10, v9, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    iget-object v9, v9, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    invoke-static {p0, v6, v10, v9}, Lcom/google/android/gms/wearable/d/a;->a(Ljava/util/List;Lcom/google/android/gms/wearable/m;Ljava/lang/String;Lcom/google/android/gms/wearable/d/a/c;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 309
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    :cond_2
    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    .line 311
    iget-object v0, v0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    iget-object v0, v0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_3
    const/4 v6, 0x6

    if-ne p2, v6, :cond_4

    .line 313
    iget-object v0, v0, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    iget v0, v0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected typeOfArrayList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_5
    return-object v3
.end method

.method private static a(Ljava/util/List;Lcom/google/android/gms/wearable/m;Ljava/lang/String;Lcom/google/android/gms/wearable/d/a/c;)V
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x9

    const/4 v4, 0x6

    const/4 v3, 0x2

    .line 192
    iget v0, p3, Lcom/google/android/gms/wearable/d/a/c;->a:I

    .line 193
    if-ne v0, v6, :cond_0

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v1, p3, Lcom/google/android/gms/wearable/d/a/c;->b:Lcom/google/android/gms/wearable/d/a/d;

    .line 200
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 201
    iget-object v0, v1, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    iget-object v1, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :cond_1
    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    .line 203
    iget-object v0, v1, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_2
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    .line 205
    iget-object v0, v1, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    iget-object v1, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_3
    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    .line 207
    iget-object v0, v1, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    iget-object v1, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_4
    if-ne v0, v3, :cond_5

    .line 209
    iget-object v0, v1, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 211
    iget-wide v0, v1, Lcom/google/android/gms/wearable/d/a/d;->c:D

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;D)V

    goto :goto_0

    .line 212
    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 213
    iget v0, v1, Lcom/google/android/gms/wearable/d/a/d;->d:F

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;F)V

    goto :goto_0

    .line 214
    :cond_7
    const/4 v2, 0x5

    if-ne v0, v2, :cond_8

    .line 215
    iget-wide v0, v1, Lcom/google/android/gms/wearable/d/a/d;->e:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 216
    :cond_8
    if-ne v0, v4, :cond_9

    .line 217
    iget v0, v1, Lcom/google/android/gms/wearable/d/a/d;->f:I

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 218
    :cond_9
    const/4 v2, 0x7

    if-ne v0, v2, :cond_a

    .line 219
    iget v0, v1, Lcom/google/android/gms/wearable/d/a/d;->g:I

    int-to-byte v0, v0

    iget-object v1, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_a
    const/16 v2, 0x8

    if-ne v0, v2, :cond_b

    .line 221
    iget-boolean v0, v1, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 222
    :cond_b
    const/16 v2, 0xd

    if-ne v0, v2, :cond_d

    .line 223
    if-nez p0, :cond_c

    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "populateBundle: unexpected type for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_c
    iget-wide v0, v1, Lcom/google/android/gms/wearable/d/a/d;->n:J

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    iget-object v1, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 227
    :cond_d
    if-ne v0, v5, :cond_f

    .line 228
    new-instance v2, Lcom/google/android/gms/wearable/m;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/m;-><init>()V

    .line 229
    iget-object v1, v1, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    .line 230
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_e

    aget-object v4, v1, v0

    .line 231
    iget-object v5, v4, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    invoke-static {p0, v2, v5, v4}, Lcom/google/android/gms/wearable/d/a;->a(Ljava/util/List;Lcom/google/android/gms/wearable/m;Ljava/lang/String;Lcom/google/android/gms/wearable/d/a/c;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_e
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    goto/16 :goto_0

    .line 235
    :cond_f
    const/16 v2, 0xa

    if-ne v0, v2, :cond_14

    .line 237
    iget-object v0, v1, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    invoke-static {p2, v0}, Lcom/google/android/gms/wearable/d/a;->a(Ljava/lang/String;[Lcom/google/android/gms/wearable/d/a/c;)I

    move-result v0

    .line 238
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/wearable/d/a;->a(Ljava/util/List;Lcom/google/android/gms/wearable/d/a/d;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 239
    if-ne v0, v6, :cond_10

    .line 241
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/m;->b(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 242
    :cond_10
    if-ne v0, v5, :cond_11

    .line 243
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 244
    :cond_11
    if-ne v0, v3, :cond_12

    .line 245
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/m;->b(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 246
    :cond_12
    if-ne v0, v4, :cond_13

    .line 247
    iget-object v0, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 250
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected typeOfArrayList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "populateBundle: unexpected type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Lcom/google/android/gms/wearable/m;Ljava/util/List;)[Lcom/google/android/gms/wearable/d/a/b;
    .locals 6

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/gms/wearable/d/a/b;

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    new-instance v5, Lcom/google/android/gms/wearable/d/a/b;

    invoke-direct {v5}, Lcom/google/android/gms/wearable/d/a/b;-><init>()V

    aput-object v5, v2, v1

    .line 64
    aget-object v5, v2, v1

    iput-object v0, v5, Lcom/google/android/gms/wearable/d/a/b;->a:Ljava/lang/String;

    .line 65
    aget-object v0, v2, v1

    invoke-static {p1, v4}, Lcom/google/android/gms/wearable/d/a;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/wearable/d/a/c;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/wearable/d/a/b;->b:Lcom/google/android/gms/wearable/d/a/c;

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-object v2
.end method
