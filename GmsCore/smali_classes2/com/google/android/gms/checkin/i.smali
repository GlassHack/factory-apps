.class public final Lcom/google/android/gms/checkin/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/HashMap;

.field private static final f:[C


# instance fields
.field private c:Ljava/lang/Object;

.field private d:[I

.field private e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const-string v0, ",?([a-z_]+)(?:\\(([0-9]+)\\))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/checkin/i;->a:Ljava/util/regex/Pattern;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 432
    sput-object v0, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    const-string v1, "count"

    new-instance v2, Lcom/google/android/gms/checkin/j;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/j;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    const-string v1, "sum"

    new-instance v2, Lcom/google/android/gms/checkin/l;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/l;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    const-string v1, "mean"

    new-instance v2, Lcom/google/android/gms/checkin/n;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    const-string v1, "min"

    new-instance v2, Lcom/google/android/gms/checkin/p;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/p;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    const-string v1, "max"

    new-instance v2, Lcom/google/android/gms/checkin/r;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/r;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    const-string v1, "group_by"

    new-instance v2, Lcom/google/android/gms/checkin/t;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/t;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    const-string v1, "packages"

    new-instance v2, Lcom/google/android/gms/checkin/v;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/v;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/checkin/i;->f:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/checkin/i;->d:[I

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/i;->e:Ljava/util/HashMap;

    .line 135
    return-void
.end method

.method private static a(Landroid/util/EventLog$Event;)J
    .locals 4

    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 105
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/gms/checkin/z;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 404
    new-instance v1, Lcom/google/android/gms/checkin/z;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/android/gms/checkin/z;-><init>(B)V

    .line 405
    sget-object v0, Lcom/google/android/gms/checkin/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 406
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 409
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bad spec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    const/4 v0, -0x1

    .line 415
    :goto_1
    const-string v4, "log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 416
    iput-boolean v6, v1, Lcom/google/android/gms/checkin/z;->b:Z

    .line 407
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 414
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 418
    :cond_4
    sget-object v4, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad function: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_5
    iget-object v4, v1, Lcom/google/android/gms/checkin/z;->d:Ljava/util/ArrayList;

    sget-object v5, Lcom/google/android/gms/checkin/i;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v4, v1, Lcom/google/android/gms/checkin/z;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v4, "group_by"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/checkin/z;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 425
    :cond_6
    return-object v1
.end method

.method static synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/google/android/gms/checkin/i;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, Lcom/google/android/gms/checkin/i;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, Lcom/google/android/gms/checkin/i;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(JJJLjava/util/List;Landroid/os/DropBoxManager;Landroid/content/Context;)V
    .locals 13

    .prologue
    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    const-string v2, "start="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v2, "end="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    cmp-long v2, p5, p1

    if-eqz v2, :cond_0

    .line 300
    const-string v2, "log_start="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 304
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 307
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/EventLog$Event;

    .line 308
    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getTag()I

    move-result v11

    .line 309
    iget-object v3, p0, Lcom/google/android/gms/checkin/i;->e:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/checkin/z;

    .line 310
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/checkin/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 313
    iget-object v4, v3, Lcom/google/android/gms/checkin/z;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v12

    .line 315
    iget-object v2, v3, Lcom/google/android/gms/checkin/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v12, v2}, Lcom/google/android/gms/checkin/i;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_2
    :try_start_0
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 319
    if-nez v2, :cond_4

    .line 320
    new-instance v5, Ljava/util/ArrayList;

    iget-object v2, v3, Lcom/google/android/gms/checkin/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    const/4 v2, 0x0

    move v6, v2

    :goto_2
    iget-object v2, v3, Lcom/google/android/gms/checkin/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_3

    .line 322
    iget-object v2, v3, Lcom/google/android/gms/checkin/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/checkin/x;

    iget-object v4, v3, Lcom/google/android/gms/checkin/z;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/checkin/x;->a(I)Lcom/google/android/gms/checkin/y;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    .line 324
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    .line 327
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/checkin/y;

    invoke-interface {v2, v12}, Lcom/google/android/gms/checkin/y;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 328
    :catch_0
    move-exception v2

    .line 329
    const-string v4, "EventLogAggregator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t accumulate event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/google/android/gms/checkin/z;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    iget-object v2, p0, Lcom/google/android/gms/checkin/i;->e:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 335
    :cond_5
    :try_start_1
    const-string v2, "\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 337
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/google/android/d/a;->a(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 338
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/checkin/y;

    .line 339
    const-string v5, ","

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    move-object/from16 v0, p9

    invoke-interface {v2, v7, v0}, Lcom/google/android/gms/checkin/y;->a(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 344
    :catch_1
    move-exception v2

    .line 345
    const-string v3, "EventLogAggregator"

    const-string v4, "IOException writing StringBuilder"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    const-string v3, "event_data"

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void

    .line 342
    :cond_7
    :try_start_2
    const-string v2, "\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method private declared-synchronized a(JJLjava/util/List;Landroid/os/DropBoxManager;)V
    .locals 7

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    cmp-long v0, p3, p1

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",0,0,event_log_start\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/EventLog$Event;

    .line 249
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v1

    .line 250
    iget-object v4, p0, Lcom/google/android/gms/checkin/i;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/checkin/z;

    .line 251
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/google/android/gms/checkin/z;->b:Z

    if-eqz v4, :cond_1

    .line 253
    invoke-static {v0}, Lcom/google/android/gms/checkin/i;->a(Landroid/util/EventLog$Event;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getProcessId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getThreadId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, v1, Lcom/google/android/gms/checkin/z;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :try_start_1
    invoke-virtual {v0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 260
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 261
    check-cast v0, [Ljava/lang/Object;

    .line 262
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 263
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/d/a;->a(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_2
    if-eqz v0, :cond_3

    .line 267
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/d/a;->a(Ljava/lang/String;Ljava/lang/Appendable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_3
    :goto_2
    :try_start_2
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    :try_start_3
    const-string v1, "EventLogAggregator"

    const-string v4, "IOException writing StringBuilder"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 277
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 280
    const-string v1, "event_log"

    invoke-virtual {p6, v1, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :cond_5
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(Landroid/content/ContentResolver;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 359
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v3

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/checkin/i;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_0

    .line 395
    :goto_0
    monitor-exit p0

    return-void

    .line 362
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 364
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "event:"

    aput-object v4, v0, v1

    invoke-static {p1, v0}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 365
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 366
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-static {v5}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v1

    .line 368
    if-gez v1, :cond_2

    .line 369
    const-string v0, "EventLogAggregator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Unknown tag: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-lez v6, :cond_1

    .line 377
    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/checkin/i;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/z;

    move-result-object v6

    .line 378
    iget-boolean v7, v6, Lcom/google/android/gms/checkin/z;->b:Z

    if-nez v7, :cond_3

    iget-object v7, v6, Lcom/google/android/gms/checkin/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 379
    :cond_3
    iput-object v5, v6, Lcom/google/android/gms/checkin/z;->a:Ljava/lang/String;

    .line 380
    iget-object v7, p0, Lcom/google/android/gms/checkin/i;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 381
    :catch_0
    move-exception v1

    .line 382
    :try_start_4
    const-string v6, "EventLogAggregator"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bad spec: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/checkin/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/checkin/i;->d:[I

    .line 390
    iget-object v0, p0, Lcom/google/android/gms/checkin/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/gms/checkin/i;->d:[I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    move v1, v2

    goto :goto_2

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/checkin/i;->d:[I

    add-int/lit8 v2, v1, 0x1

    const v4, 0x11238

    aput v4, v0, v1

    .line 392
    iget-object v0, p0, Lcom/google/android/gms/checkin/i;->d:[I

    array-length v0, v0

    if-eq v2, v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 394
    :cond_6
    iput-object v3, p0, Lcom/google/android/gms/checkin/i;->c:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic b(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 105
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 609
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameter required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 611
    check-cast p0, [Ljava/lang/Object;

    .line 612
    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_2
    aget-object p0, p0, p1

    .line 617
    :cond_3
    return-object p0

    .line 614
    :cond_4
    if-lez p1, :cond_3

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 653
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 656
    const/4 v2, 0x0

    .line 658
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 662
    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    .line 663
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 664
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 667
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    .line 667
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 673
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/checkin/i;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 667
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static b([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 686
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 687
    sget-object v4, Lcom/google/android/gms/checkin/i;->f:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/checkin/i;->f:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;JJLandroid/os/DropBoxManager;)J
    .locals 20

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/checkin/i;->a(Landroid/content/ContentResolver;)V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 166
    const v2, 0x11238

    invoke-static {v2, v14, v15}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 168
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/checkin/i;->d:[I

    invoke-static {v2, v11}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 173
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 176
    const/4 v9, 0x0

    move-wide v4, v14

    move-wide v6, v14

    :goto_0
    if-ge v9, v10, :cond_a

    .line 177
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/EventLog$Event;

    .line 178
    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getTag()I

    move-result v16

    .line 179
    invoke-static {v2}, Lcom/google/android/gms/checkin/i;->a(Landroid/util/EventLog$Event;)J

    move-result-wide v12

    .line 183
    if-ne v8, v10, :cond_0

    cmp-long v17, v12, p2

    if-ltz v17, :cond_0

    .line 185
    cmp-long v8, v12, v6

    if-gez v8, :cond_9

    move-wide v6, v12

    move v8, v9

    .line 187
    :cond_0
    :goto_1
    if-ne v3, v10, :cond_1

    cmp-long v17, v12, p4

    if-ltz v17, :cond_1

    .line 189
    cmp-long v3, v12, v4

    if-gez v3, :cond_8

    move-wide v4, v12

    move v3, v9

    .line 193
    :cond_1
    :goto_2
    const v12, 0x11238

    move/from16 v0, v16

    if-ne v0, v12, :cond_7

    .line 194
    invoke-virtual {v2}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 195
    instance-of v12, v2, Ljava/lang/Long;

    if-eqz v12, :cond_7

    .line 196
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 197
    cmp-long v2, v12, p2

    if-nez v2, :cond_2

    .line 198
    add-int/lit8 v8, v9, 0x1

    move-wide/from16 v6, p2

    .line 201
    :cond_2
    cmp-long v2, v12, p4

    if-nez v2, :cond_6

    .line 202
    add-int/lit8 v4, v9, 0x1

    move-wide/from16 v2, p4

    .line 205
    :goto_3
    cmp-long v5, v12, v14

    if-nez v5, :cond_5

    move-wide v12, v2

    move v10, v4

    move v2, v9

    .line 218
    :goto_4
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-lez v3, :cond_3

    if-eqz p6, :cond_3

    .line 219
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v11, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-object/from16 v9, p6

    .line 220
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/checkin/i;->a(JJLjava/util/List;Landroid/os/DropBoxManager;)V

    .line 222
    :cond_3
    const-wide/16 v4, -0x1

    cmp-long v3, p4, v4

    if-lez v3, :cond_4

    if-eqz p6, :cond_4

    .line 223
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v11, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    move-object/from16 v3, p0

    move-wide/from16 v4, p4

    move-wide v6, v14

    move-wide v8, v12

    move-object/from16 v11, p6

    move-object/from16 v12, p1

    .line 224
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/checkin/i;->a(JJJLjava/util/List;Landroid/os/DropBoxManager;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_4
    monitor-exit p0

    return-wide v14

    :cond_5
    move-wide/from16 v18, v6

    move v6, v4

    move v7, v8

    move-wide/from16 v4, v18

    .line 176
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    move-wide/from16 v18, v4

    move-wide v4, v2

    move v3, v6

    move-wide/from16 v6, v18

    goto/16 :goto_0

    .line 158
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6
    move-wide/from16 v18, v4

    move v4, v3

    move-wide/from16 v2, v18

    goto :goto_3

    :cond_7
    move-wide/from16 v18, v4

    move-wide v4, v6

    move v6, v3

    move v7, v8

    move-wide/from16 v2, v18

    goto :goto_5

    :cond_8
    move v3, v9

    goto/16 :goto_2

    :cond_9
    move v8, v9

    goto/16 :goto_1

    :cond_a
    move-wide v12, v4

    move v2, v10

    move v10, v3

    goto :goto_4
.end method
