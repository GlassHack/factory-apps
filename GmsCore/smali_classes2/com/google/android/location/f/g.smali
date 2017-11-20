.class public abstract Lcom/google/android/location/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Collection;


# instance fields
.field protected final b:I

.field protected final c:I

.field protected final d:I

.field protected final e:I

.field protected final f:I

.field protected final g:I

.field protected final h:I

.field protected final i:J

.field protected final j:Ljava/util/Collection;

.field protected final k:I

.field protected final l:I

.field protected m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/f/g;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(JIIIILjava/util/Collection;IIIII)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lcom/google/android/location/f/g;->i:J

    .line 74
    iput p3, p0, Lcom/google/android/location/f/g;->k:I

    .line 75
    iput p4, p0, Lcom/google/android/location/f/g;->b:I

    .line 76
    iput p5, p0, Lcom/google/android/location/f/g;->c:I

    .line 77
    iput p6, p0, Lcom/google/android/location/f/g;->d:I

    .line 78
    iput-object p7, p0, Lcom/google/android/location/f/g;->j:Ljava/util/Collection;

    .line 79
    iput p12, p0, Lcom/google/android/location/f/g;->l:I

    .line 80
    iput p8, p0, Lcom/google/android/location/f/g;->e:I

    .line 81
    iput p9, p0, Lcom/google/android/location/f/g;->f:I

    .line 82
    iput p10, p0, Lcom/google/android/location/f/g;->g:I

    .line 83
    iput p11, p0, Lcom/google/android/location/f/g;->h:I

    .line 84
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/g/a/b/b/a;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 204
    if-nez p0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 209
    array-length v1, v2

    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    .line 213
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 214
    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 215
    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 217
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 218
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v8, Lcom/google/android/location/n/a;->j:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v8}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 220
    if-eq v4, v3, :cond_6

    .line 221
    const/16 v8, 0xa

    invoke-virtual {v1, v8, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 223
    const/4 v8, 0x6

    if-ne v4, v8, :cond_5

    move v2, v3

    .line 234
    :goto_1
    if-eq v2, v3, :cond_2

    .line 235
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 237
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v7}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 238
    if-eq v6, v3, :cond_3

    .line 239
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 241
    :cond_3
    if-eq v5, v3, :cond_4

    .line 242
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    :cond_4
    move-object v0, v1

    .line 244
    goto :goto_0

    .line 226
    :cond_5
    array-length v4, v2

    const/4 v8, 0x5

    if-ne v4, v8, :cond_0

    .line 230
    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method static a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/g;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :goto_0
    return-object p0

    .line 304
    :cond_0
    const-string v0, "[cid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/google/android/location/f/g;->b:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    const-string v0, " mcc: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/google/android/location/f/g;->c:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, " mnc: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/google/android/location/f/g;->d:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p1}, Lcom/google/android/location/f/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v0, " radioType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/google/android/location/f/g;->k:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const-string v0, " signalStrength: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/google/android/location/f/g;->l:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v0, " timeStamp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/google/android/location/f/g;->i:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 311
    const-string v0, " neighbors["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const/4 v0, 0x1

    .line 313
    iget-object v1, p1, Lcom/google/android/location/f/g;->j:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/g;

    .line 314
    if-eqz v1, :cond_1

    .line 315
    const/4 v1, 0x0

    .line 319
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 321
    :cond_2
    const-string v0, "]]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/io/PrintWriter;Lcom/google/android/location/f/g;)V
    .locals 1

    .prologue
    .line 326
    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/location/f/g;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/google/g/a/b/b/a;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v1, -0x1

    .line 162
    .line 166
    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    .line 171
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    .line 174
    :goto_1
    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    .line 177
    :goto_2
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    .line 183
    :goto_3
    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_4
    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    invoke-virtual {p0, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    .line 192
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method private k()Lcom/google/g/a/b/b/a;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    const-wide v10, 0x4085b38e38e38e39L    # 694.4444444444445

    const v8, 0x7fffffff

    .line 332
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v3, Lcom/google/android/location/n/a;->j:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 334
    iget v3, p0, Lcom/google/android/location/f/g;->b:I

    if-eq v3, v8, :cond_0

    .line 335
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/location/f/g;->b:I

    invoke-virtual {v2, v3, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 338
    :cond_0
    iget v3, p0, Lcom/google/android/location/f/g;->d:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/google/android/location/f/g;->d:I

    if-eq v3, v8, :cond_1

    .line 339
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/location/f/g;->d:I

    invoke-virtual {v2, v3, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 342
    :cond_1
    iget v3, p0, Lcom/google/android/location/f/g;->c:I

    if-eq v3, v5, :cond_2

    iget v3, p0, Lcom/google/android/location/f/g;->c:I

    if-eq v3, v8, :cond_2

    .line 343
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/android/location/f/g;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 346
    :cond_2
    iget v3, p0, Lcom/google/android/location/f/g;->l:I

    const/16 v4, -0x270f

    if-eq v3, v4, :cond_3

    .line 347
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/location/f/g;->l:I

    invoke-virtual {v2, v3, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 350
    :cond_3
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 351
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 354
    :cond_4
    iget v3, p0, Lcom/google/android/location/f/g;->g:I

    iget v4, p0, Lcom/google/android/location/f/g;->h:I

    if-eq v3, v8, :cond_5

    if-eq v4, v8, :cond_5

    const v5, 0x13c680

    if-gt v3, v5, :cond_5

    const v5, -0x13c680

    if-lt v3, v5, :cond_5

    const v3, 0x278d00

    if-gt v4, v3, :cond_5

    const v3, -0x278d00

    if-lt v4, v3, :cond_5

    move v0, v1

    :cond_5
    if-eqz v0, :cond_6

    .line 355
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v3, Lcom/google/android/location/n/a;->i:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 356
    iget v3, p0, Lcom/google/android/location/f/g;->g:I

    int-to-double v4, v3

    mul-double/2addr v4, v10

    double-to-int v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 357
    const/4 v1, 0x2

    iget v3, p0, Lcom/google/android/location/f/g;->h:I

    int-to-double v4, v3

    mul-double/2addr v4, v10

    double-to-int v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 358
    const/16 v1, 0x9

    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 362
    :cond_6
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/location/f/g;->j()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 365
    invoke-virtual {p0, v2}, Lcom/google/android/location/f/g;->a(Lcom/google/g/a/b/b/a;)V

    .line 366
    return-object v2
.end method


# virtual methods
.method public abstract a(JI)Lcom/google/android/location/f/g;
.end method

.method public final a(J)Lcom/google/g/a/b/b/a;
    .locals 5

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/android/location/f/g;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    .line 272
    :cond_0
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->k:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 273
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/location/f/g;->i:J

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 276
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/location/f/g;->k()Lcom/google/g/a/b/b/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 279
    iget-object v0, p0, Lcom/google/android/location/f/g;->j:Ljava/util/Collection;

    .line 280
    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/g;

    .line 282
    const/4 v3, 0x3

    invoke-direct {v0}, Lcom/google/android/location/f/g;->k()Lcom/google/g/a/b/b/a;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 285
    goto :goto_0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method abstract a(Lcom/google/g/a/b/b/a;)V
.end method

.method public final a(Lcom/google/g/a/b/b/a;J)V
    .locals 4

    .prologue
    .line 255
    invoke-virtual {p0, p2, p3}, Lcom/google/android/location/f/g;->a(J)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 259
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 261
    :cond_0
    return-void
.end method

.method public abstract a(Lcom/google/android/location/f/g;)Z
.end method

.method abstract b()Z
.end method

.method public final b(Lcom/google/android/location/f/g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/location/f/g;->b:I

    iget v2, p1, Lcom/google/android/location/f/g;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/g;->c:I

    iget v2, p1, Lcom/google/android/location/f/g;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/g;->d:I

    iget v2, p1, Lcom/google/android/location/f/g;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/g;->k:I

    iget v2, p1, Lcom/google/android/location/f/g;->k:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/location/f/g;->a(Lcom/google/android/location/f/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract c()Ljava/lang/String;
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/location/f/g;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/f/g;->f:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/location/f/g;->e:I

    goto :goto_0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/location/f/g;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/f/g;->d:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/location/f/g;->c:I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 467
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/location/f/g;

    if-eqz v1, :cond_0

    .line 468
    check-cast p1, Lcom/google/android/location/f/g;

    .line 469
    iget v1, p0, Lcom/google/android/location/f/g;->b:I

    iget v2, p1, Lcom/google/android/location/f/g;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/g;->c:I

    iget v2, p1, Lcom/google/android/location/f/g;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/g;->d:I

    iget v2, p1, Lcom/google/android/location/f/g;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/location/f/g;->k:I

    iget v2, p1, Lcom/google/android/location/f/g;->k:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 472
    :cond_0
    return v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/google/android/location/f/g;->i:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/location/f/g;->k:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/location/f/g;->l:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 459
    iget v0, p0, Lcom/google/android/location/f/g;->b:I

    mul-int/lit16 v0, v0, 0x92b

    iget v1, p0, Lcom/google/android/location/f/g;->c:I

    mul-int/lit16 v1, v1, 0x3a9

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/location/f/g;->d:I

    mul-int/lit8 v1, v1, 0x65

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/location/f/g;->k:I

    mul-int/lit16 v1, v1, 0xe3b

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/google/android/location/f/g;->b:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/f/g;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/f/g;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/location/f/g;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/f/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 374
    const/4 v2, -0x1

    .line 375
    iget v3, p0, Lcom/google/android/location/f/g;->k:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 384
    :goto_0
    return v0

    .line 377
    :cond_0
    iget v3, p0, Lcom/google/android/location/f/g;->k:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 378
    goto :goto_0

    .line 379
    :cond_1
    iget v3, p0, Lcom/google/android/location/f/g;->k:I

    if-ne v3, v0, :cond_2

    .line 380
    const/4 v0, 0x5

    goto :goto_0

    .line 381
    :cond_2
    iget v0, p0, Lcom/google/android/location/f/g;->k:I

    if-ne v0, v1, :cond_3

    .line 382
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/location/f/g;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/g;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
