.class public final Lcom/google/android/gms/fitness/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/fitness/e/b;

.field static final b:Lcom/google/android/gms/fitness/e/b;

.field static final c:Lcom/google/android/gms/fitness/e/b;

.field static final d:Lcom/google/android/gms/fitness/e/b;

.field static final e:Lcom/google/android/gms/fitness/e/b;

.field public static final f:Lcom/google/android/gms/fitness/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/fitness/e/d;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/e/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/e/c;->a:Lcom/google/android/gms/fitness/e/b;

    .line 87
    new-instance v0, Lcom/google/android/gms/fitness/e/e;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/e/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/e/c;->b:Lcom/google/android/gms/fitness/e/b;

    .line 115
    new-instance v0, Lcom/google/android/gms/fitness/e/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/e/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/e/c;->c:Lcom/google/android/gms/fitness/e/b;

    .line 132
    new-instance v0, Lcom/google/android/gms/fitness/e/g;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/e/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/e/c;->d:Lcom/google/android/gms/fitness/e/b;

    .line 148
    new-instance v0, Lcom/google/android/gms/fitness/e/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/e/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/e/c;->e:Lcom/google/android/gms/fitness/e/b;

    .line 174
    new-instance v0, Lcom/google/android/gms/fitness/e/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/e/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/e/c;->f:Lcom/google/android/gms/fitness/e/b;

    return-void
.end method

.method public static a(Lcom/google/n/a/a/a/a/c;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 8

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 221
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    .line 222
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 224
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->b(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->c(J)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 231
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v3

    .line 232
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 233
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 234
    invoke-virtual {v2, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    iget-object v4, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    .line 232
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 235
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 236
    invoke-virtual {v2, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    iget-object v4, p0, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    goto :goto_1

    .line 238
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_4
    if-eqz p2, :cond_5

    .line 243
    invoke-virtual {v2, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 245
    :cond_5
    return-object v2
.end method

.method public static a(Lcom/google/android/gms/fitness/data/DataPoint;ZZ)Lcom/google/n/a/a/a/a/c;
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 263
    new-instance v2, Lcom/google/n/a/a/a/a/c;

    invoke-direct {v2}, Lcom/google/n/a/a/a/a/c;-><init>()V

    .line 267
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v0

    .line 268
    if-eqz p1, :cond_0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v0

    .line 271
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/n/a/a/a/a/c;->a:Ljava/lang/Long;

    .line 272
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/n/a/a/a/a/c;->b:Ljava/lang/Long;

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->g()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->f()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/n/a/a/a/a/c;->g:Ljava/lang/Long;

    .line 280
    :cond_2
    if-eqz p2, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/n/a/a/a/a/c;->c:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->d()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/n/a/a/a/a/c;->d:Ljava/lang/String;

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/google/n/a/a/a/a/h;

    iput-object v0, v2, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    .line 289
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 290
    iget-object v1, v2, Lcom/google/n/a/a/a/a/c;->e:[Lcom/google/n/a/a/a/a/h;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    new-instance v4, Lcom/google/n/a/a/a/a/h;

    invoke-direct {v4}, Lcom/google/n/a/a/a/a/h;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->b()I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->d()F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v4, Lcom/google/n/a/a/a/a/h;->b:Ljava/lang/Double;

    :goto_1
    aput-object v4, v1, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->b()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lcom/google/n/a/a/a/a/h;->a:Ljava/lang/Integer;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Value;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_6
    return-object v2
.end method

.method public static a(Lcom/google/android/gms/fitness/data/DataSource;[Lcom/google/n/a/a/a/a/c;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, p1, v1

    .line 314
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v5, p0, v0}, Lcom/google/android/gms/fitness/e/c;->a(Lcom/google/n/a/a/a/a/c;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unable to convert: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 319
    :cond_0
    return-object v3
.end method
