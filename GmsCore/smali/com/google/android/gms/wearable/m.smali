.class public final Lcom/google/android/gms/wearable/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/wearable/m;
    .locals 3

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Lcom/google/android/gms/wearable/d/b;

    invoke-static {p0}, Lcom/google/android/gms/wearable/d/a/a;->a([B)Lcom/google/android/gms/wearable/d/a/a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/d/b;-><init>(Lcom/google/android/gms/wearable/d/a/a;Ljava/util/List;)V

    invoke-static {v0}, Lcom/google/android/gms/wearable/d/a;->a(Lcom/google/android/gms/wearable/d/b;)Lcom/google/android/gms/wearable/m;
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to convert data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 1

    .prologue
    .line 794
    const-string v0, "<null>"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 795
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 2

    .prologue
    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 808
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    const-string v1, "DataMap"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v0, "DataMap"

    const-string v1, "Attempt to cast generated internal exception:"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/m;)V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a()[B
    .locals 1

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/android/gms/wearable/d/a;->a(Lcom/google/android/gms/wearable/m;)Lcom/google/android/gms/wearable/d/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/wearable/d/b;->a:Lcom/google/android/gms/wearable/d/a/a;

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v1, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 373
    if-nez v2, :cond_0

    move v1, v3

    .line 380
    :goto_0
    return v1

    .line 377
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    const-string v4, "Boolean"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1, v2, v4, v5, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, v3

    .line 380
    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v1, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 437
    if-nez v2, :cond_0

    move v1, v3

    .line 444
    :goto_0
    return v1

    .line 441
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    const-string v4, "Integer"

    invoke-static {p1, v2, v4, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move v1, v3

    .line 444
    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 468
    iget-object v2, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 469
    if-nez v3, :cond_0

    move-wide v2, v4

    .line 476
    :goto_0
    return-wide v2

    .line 473
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 474
    :catch_0
    move-exception v2

    .line 475
    const-string v6, "long"

    invoke-static {p1, v3, v6, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-wide v2, v4

    .line 476
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 776
    instance-of v0, p1, Lcom/google/android/gms/wearable/m;

    if-nez v0, :cond_0

    move v0, v3

    .line 779
    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/wearable/m;

    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/m;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v1, Lcom/google/android/gms/wearable/Asset;

    if-eqz v0, :cond_8

    instance-of v0, v2, Lcom/google/android/gms/wearable/Asset;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/wearable/Asset;

    if-eqz v0, :cond_4

    if-nez v1, :cond_6

    :cond_4
    if-ne v0, v1, :cond_5

    move v0, v4

    :goto_1
    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_1

    :cond_8
    instance-of v0, v1, [Ljava/lang/String;

    if-eqz v0, :cond_a

    instance-of v0, v2, [Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_0

    :cond_9
    check-cast v1, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto/16 :goto_0

    :cond_a
    instance-of v0, v1, [J

    if-eqz v0, :cond_c

    instance-of v0, v2, [J

    if-nez v0, :cond_b

    move v0, v3

    goto/16 :goto_0

    :cond_b
    check-cast v1, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto/16 :goto_0

    :cond_c
    instance-of v0, v1, [F

    if-eqz v0, :cond_e

    instance-of v0, v2, [F

    if-nez v0, :cond_d

    move v0, v3

    goto/16 :goto_0

    :cond_d
    check-cast v1, [F

    check-cast v2, [F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto/16 :goto_0

    :cond_e
    instance-of v0, v1, [B

    if-eqz v0, :cond_10

    instance-of v0, v2, [B

    if-nez v0, :cond_f

    move v0, v3

    goto/16 :goto_0

    :cond_f
    check-cast v1, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto/16 :goto_0

    :cond_10
    if-eqz v1, :cond_11

    if-nez v2, :cond_12

    :cond_11
    if-eq v1, v2, :cond_13

    move v0, v3

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto/16 :goto_0

    :cond_13
    move v0, v4

    goto/16 :goto_0
.end method

.method public final f(Ljava/lang/String;)F
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 500
    iget-object v1, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 501
    if-nez v2, :cond_0

    move v1, v3

    .line 508
    :goto_0
    return v1

    .line 505
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    const-string v4, "Float"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p1, v2, v4, v5, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move v1, v3

    .line 508
    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)D
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 532
    iget-object v2, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 533
    if-nez v3, :cond_0

    move-wide v2, v4

    .line 540
    :goto_0
    return-wide v2

    .line 537
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    .line 539
    const-string v6, "Double"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {p1, v3, v6, v7, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    move-wide v2, v4

    .line 540
    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 568
    if-nez v0, :cond_0

    move-object v0, v1

    .line 575
    :goto_0
    return-object v0

    .line 572
    :cond_0
    :try_start_0
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v2

    .line 574
    const-string v3, "String"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v0, v1

    .line 575
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    return v0
.end method

.method public final i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 609
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 610
    if-nez v0, :cond_0

    move-object v0, v1

    .line 617
    :goto_0
    return-object v0

    .line 614
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/wearable/m;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v2

    .line 616
    const-string v3, "DataMap"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v0, v1

    .line 617
    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 653
    if-nez v0, :cond_0

    move-object v0, v1

    .line 660
    :goto_0
    return-object v0

    .line 657
    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v2

    .line 659
    const-string v3, "ArrayList<String>"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v0, v1

    .line 660
    goto :goto_0
.end method

.method public final k(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 674
    if-nez v0, :cond_0

    move-object v0, v1

    .line 681
    :goto_0
    return-object v0

    .line 678
    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 679
    :catch_0
    move-exception v2

    .line 680
    const-string v3, "ArrayList<DataMap>"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v0, v1

    .line 681
    goto :goto_0
.end method

.method public final l(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 758
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 759
    if-nez v0, :cond_0

    move-object v0, v1

    .line 766
    :goto_0
    return-object v0

    .line 763
    :cond_0
    :try_start_0
    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 764
    :catch_0
    move-exception v2

    .line 765
    const-string v3, "String[]"

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v0, v1

    .line 766
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
