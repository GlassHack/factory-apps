.class public Lcom/google/n/b/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/n/b/c/a;


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParser;

.field private final b:Ljava/io/InputStream;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/n/b/c/a/a;->b:Ljava/io/InputStream;

    .line 53
    iput-object p2, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/n/b/c/a/a;->c:Z

    .line 55
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not create XmlGDataParser"

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/google/n/b/b/a;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 385
    :goto_0
    if-eq v0, v5, :cond_1

    .line 386
    packed-switch v0, :pswitch_data_0

    .line 442
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 389
    :pswitch_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    :cond_1
    return-void

    .line 393
    :cond_2
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/n/b/b/a;->a:Ljava/lang/String;

    goto :goto_1

    .line 395
    :cond_3
    const-string v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/n/b/b/a;->b:Ljava/lang/String;

    goto :goto_1

    .line 397
    :cond_4
    const-string v1, "link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 398
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "rel"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "type"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "href"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    const-string v3, "edit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 405
    iput-object v2, p1, Lcom/google/n/b/b/a;->c:Ljava/lang/String;

    goto :goto_1

    .line 406
    :cond_5
    const-string v3, "alternate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iput-object v2, p1, Lcom/google/n/b/b/a;->d:Ljava/lang/String;

    goto :goto_1

    .line 409
    :cond_6
    const-string v1, "summary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 415
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/n/b/b/a;->e:Ljava/lang/String;

    goto/16 :goto_1

    .line 416
    :cond_7
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 418
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/n/b/b/a;->f:Ljava/lang/String;

    goto/16 :goto_1

    .line 419
    :cond_8
    const-string v1, "author"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 420
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const-string v0, "author"

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected <author>: Actual element: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_2
    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_1

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/n/b/b/a;->g:Ljava/lang/String;

    goto :goto_3

    :cond_c
    const-string v1, "email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/n/b/b/a;->h:Ljava/lang/String;

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "author"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 421
    :cond_d
    const-string v1, "category"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 422
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "term"

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 425
    iput-object v0, p1, Lcom/google/n/b/b/a;->i:Ljava/lang/String;

    .line 427
    :cond_e
    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "scheme"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 430
    iput-object v1, p1, Lcom/google/n/b/b/a;->j:Ljava/lang/String;

    goto/16 :goto_1

    .line 432
    :cond_f
    const-string v1, "published"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 433
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/n/b/b/a;->k:Ljava/lang/String;

    goto/16 :goto_1

    .line 435
    :cond_10
    const-string v1, "updated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 436
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/n/b/b/a;->l:Ljava/lang/String;

    goto/16 :goto_1

    .line 437
    :cond_11
    const-string v1, "deleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 438
    iput-boolean v5, p1, Lcom/google/n/b/b/a;->m:Z

    goto/16 :goto_1

    .line 440
    :cond_12
    invoke-virtual {p0, p1}, Lcom/google/n/b/c/a/a;->a(Lcom/google/n/b/b/a;)V

    goto/16 :goto_1

    .line 386
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 420
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private h()V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/n/b/c/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 362
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 363
    packed-switch v0, :pswitch_data_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 365
    :pswitch_0
    const-string v0, "entry"

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_2
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/google/n/b/b/b;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/n/b/c/b;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not parse GData feed."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 87
    :goto_0
    if-eq v0, v4, :cond_c

    .line 88
    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v0

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :catch_2
    move-exception v0

    .line 85
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "feed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :try_start_3
    invoke-virtual {p0}, Lcom/google/n/b/c/a/a;->f()Lcom/google/n/b/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :goto_1
    if-eq v1, v4, :cond_b

    packed-switch v1, :pswitch_data_1

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalResults"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/n/b/b/c;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/n/b/b/b;->a:I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 94
    :catch_3
    move-exception v0

    .line 95
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :cond_3
    :try_start_4
    const-string v2, "startIndex"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/n/b/b/c;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/n/b/b/b;->b:I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 97
    :catch_4
    move-exception v0

    .line 98
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Unable to parse <feed>."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 93
    :cond_4
    :try_start_5
    const-string v2, "itemsPerPage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/n/b/b/c;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/n/b/b/b;->c:I

    goto :goto_2

    :cond_5
    const-string v2, "title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/b/b/b;->d:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v2, "id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/b/b/b;->e:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v2, "updated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v1}, Lcom/google/n/b/b/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/b/b/b;->f:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const-string v2, "category"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    const-string v3, "term"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v1, v0, Lcom/google/n/b/b/b;->g:Ljava/lang/String;

    :cond_9
    iget-object v1, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x0

    const-string v3, "scheme"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/n/b/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, v0, Lcom/google/n/b/b/b;->h:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v2, "entry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v1

    if-eqz v1, :cond_2

    :cond_b
    return-object v0

    .line 110
    :catch_5
    move-exception v0

    .line 111
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :catch_6
    move-exception v0

    .line 113
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :cond_c
    new-instance v0, Lcom/google/n/b/c/b;

    const-string v1, "No <feed> found in document."

    invoke-direct {v0, v1}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/google/n/b/b/a;)V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public final b()Lcom/google/n/b/b/a;
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/n/b/c/a/a;->g()Lcom/google/n/b/b/a;

    move-result-object v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Lcom/google/n/b/c/b;

    const-string v1, "Attempting to initialize parsing beyond the start of the document."

    invoke-direct {v0, v1}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not parse GData entry."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 312
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 318
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 319
    packed-switch v0, :pswitch_data_0

    .line 342
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v0

    goto :goto_0

    .line 313
    :catch_1
    move-exception v0

    .line 314
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 315
    :catch_2
    move-exception v0

    .line 316
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 322
    const-string v2, "entry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :try_start_3
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 325
    invoke-direct {p0, v1}, Lcom/google/n/b/c/a/a;->b(Lcom/google/n/b/b/a;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 326
    return-object v1

    .line 327
    :catch_3
    move-exception v0

    .line 328
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 330
    :catch_4
    move-exception v0

    .line 331
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Unable to parse <entry>."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :catch_5
    move-exception v0

    .line 344
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not read next event."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 347
    :cond_2
    new-instance v0, Lcom/google/n/b/c/b;

    const-string v1, "No <entry> found in document."

    invoke-direct {v0, v1}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 220
    iget-boolean v2, p0, Lcom/google/n/b/c/a/a;->c:Z

    if-eqz v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 225
    if-eq v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final d()Lcom/google/n/b/b/a;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 236
    invoke-virtual {p0}, Lcom/google/n/b/c/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you shouldn\'t call this if hasMoreData() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 247
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 248
    new-instance v1, Lcom/google/n/b/c/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected event START_TAG: Actual event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Lcom/google/n/b/c/b;

    const-string v2, "Could not parse entry."

    invoke-direct {v1, v2, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    new-instance v1, Lcom/google/n/b/c/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected <entry>: Actual element: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/google/n/b/c/a/a;->g()Lcom/google/n/b/b/a;

    move-result-object v1

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 266
    invoke-direct {p0, v1}, Lcom/google/n/b/c/a/a;->b(Lcom/google/n/b/b/a;)V
    :try_end_1
    .catch Lcom/google/n/b/c/b; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    .line 287
    return-object v1

    .line 268
    :catch_1
    move-exception v0

    .line 270
    :try_start_2
    invoke-virtual {p0}, Lcom/google/n/b/c/a/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/google/n/b/c/a/a;->h()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 276
    :cond_3
    :goto_0
    new-instance v2, Lcom/google/n/b/c/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse <entry>, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 274
    :catch_2
    move-exception v2

    iput-boolean v3, p0, Lcom/google/n/b/c/a/a;->c:Z

    goto :goto_0

    .line 277
    :catch_3
    move-exception v0

    .line 279
    :try_start_3
    invoke-virtual {p0}, Lcom/google/n/b/c/a/a;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/google/n/b/c/a/a;->h()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4

    .line 285
    :cond_4
    :goto_1
    new-instance v2, Lcom/google/n/b/c/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse <entry>, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/n/b/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 283
    :catch_4
    move-exception v2

    iput-boolean v3, p0, Lcom/google/n/b/c/a/a;->c:Z

    goto :goto_1
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/google/n/b/c/a/a;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected f()Lcom/google/n/b/b/b;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/n/b/b/b;

    invoke-direct {v0}, Lcom/google/n/b/b/b;-><init>()V

    return-object v0
.end method

.method protected g()Lcom/google/n/b/b/a;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/google/n/b/b/a;

    invoke-direct {v0}, Lcom/google/n/b/b/a;-><init>()V

    return-object v0
.end method
