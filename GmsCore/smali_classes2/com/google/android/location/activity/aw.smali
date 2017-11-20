.class public final Lcom/google/android/location/activity/aw;
.super Lcom/google/android/location/collectionlib/cs;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Lcom/google/android/location/os/at;

.field private e:I

.field private f:Lcom/google/android/location/collectionlib/cb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "rate"

    sput-object v0, Lcom/google/android/location/activity/aw;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 148
    packed-switch p0, :pswitch_data_0

    .line 156
    :goto_0
    :pswitch_0
    return v0

    .line 150
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private k()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/activity/aw;->e:I

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/aw;->f:Lcom/google/android/location/collectionlib/cb;

    .line 219
    return-void
.end method

.method private l()V
    .locals 7

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/location/activity/aw;->d:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->n()Ljava/io/File;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 235
    if-nez v1, :cond_1

    .line 236
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "SensorRateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create sensorCacheDir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/google/android/location/activity/aw;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 243
    const-string v0, "version,1"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/location/activity/aw;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/collectionlib/cb;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v1

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/ax;

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/google/android/location/activity/ax;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Lcom/google/android/location/activity/ax;->b:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "SensorRateUtil"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/activity/aw;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/collectionlib/cb;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 254
    :cond_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 179
    new-instance v0, Lcom/google/android/location/activity/av;

    invoke-direct {v0}, Lcom/google/android/location/activity/av;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/activity/aw;->f:Lcom/google/android/location/collectionlib/cb;

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    invoke-static {p1, v0, v5, v3}, Lcom/google/android/location/activity/av;->a(Lcom/google/g/a/b/b/a;III)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 182
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v8, v0, Lcom/google/android/location/d/i;->a:J

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v10, v0, Lcom/google/android/location/d/i;->a:J

    sub-long/2addr v8, v10

    .line 185
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v2, v0

    long-to-double v8, v8

    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v8, v10

    div-double/2addr v2, v8

    double-to-int v0, v2

    move v2, v0

    .line 190
    :goto_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorRateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Rate for delay "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/google/android/location/activity/aw;->e:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/aw;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/location/activity/aw;->f:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 192
    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object v3, p0, Lcom/google/android/location/activity/aw;->b:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/location/activity/aw;->f:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_1
    new-instance v3, Lcom/google/android/location/activity/ax;

    iget v5, p0, Lcom/google/android/location/activity/aw;->e:I

    invoke-direct {v3, v5, v2}, Lcom/google/android/location/activity/ax;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget v0, p0, Lcom/google/android/location/activity/aw;->e:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 198
    :goto_2
    iget v2, p0, Lcom/google/android/location/activity/aw;->e:I

    if-eq v0, v2, :cond_7

    .line 200
    iput v0, p0, Lcom/google/android/location/activity/aw;->e:I

    .line 201
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/activity/aw;->f:Lcom/google/android/location/collectionlib/cb;

    iget v2, p0, Lcom/google/android/location/activity/aw;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/location/activity/aw;->d:Lcom/google/android/location/os/at;

    new-array v2, v4, [Lcom/google/android/location/collectionlib/cb;

    iget-object v4, p0, Lcom/google/android/location/activity/aw;->f:Lcom/google/android/location/collectionlib/cb;

    aput-object v4, v2, v1

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    const-string v8, "SensorRateUtil"

    move-object v7, p0

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/location/os/at;->a(ZLjava/util/Set;Ljava/util/Map;JLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->a()V

    .line 208
    :goto_3
    return-void

    .line 179
    :cond_2
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x4

    invoke-static {p1, v0, v5, v3}, Lcom/google/android/location/activity/av;->a(Lcom/google/g/a/b/b/a;III)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    if-ne v0, v2, :cond_4

    const/4 v0, 0x5

    const/16 v2, 0x9

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/location/activity/av;->a(Lcom/google/g/a/b/b/a;III)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported scanner type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_5
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "SensorRateUtil"

    const-string v2, "No samples were found for calibration."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v2, v1

    .line 188
    goto/16 :goto_1

    :pswitch_0
    move v0, v1

    .line 197
    goto :goto_2

    :pswitch_1
    move v0, v4

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_2

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/activity/aw;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/location/activity/aw;->f:Lcom/google/android/location/collectionlib/cb;

    iget-object v2, p0, Lcom/google/android/location/activity/aw;->d:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-direct {p0}, Lcom/google/android/location/activity/aw;->l()V

    .line 206
    invoke-direct {p0}, Lcom/google/android/location/activity/aw;->k()V

    goto :goto_3

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorRateUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fatal sensor error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/activity/aw;->k()V

    .line 214
    return-void
.end method
