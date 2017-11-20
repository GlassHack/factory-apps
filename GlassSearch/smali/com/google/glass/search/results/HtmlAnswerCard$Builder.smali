.class public Lcom/google/glass/search/results/HtmlAnswerCard$Builder;
.super Ljava/lang/Object;
.source "HtmlAnswerCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/HtmlAnswerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final postInjectionHtml:Ljava/lang/StringBuilder;

.field public preInjectionHtml:Ljava/lang/String;

.field public ttsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    .line 431
    iput-object v1, p0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 432
    iput-object v1, p0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .line 433
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/glass/search/results/HtmlAnswerCard;)Lcom/google/glass/search/results/HtmlAnswerCard;
    .locals 16
    .param p1, "commonContent"    # Lcom/google/glass/search/results/HtmlAnswerCard;

    .prologue
    .line 441
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 442
    invoke-static {v13}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .local v10, "displayHtmlBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 444
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/glass/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, "displayHtml":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 456
    .local v5, "builtActions":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .line 457
    .local v6, "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    const/4 v2, 0x0

    .line 458
    .local v2, "addedExplicitTts":Z
    const/4 v3, 0x0

    .line 460
    .local v3, "addedImplicitTts":Z
    if-eqz p1, :cond_5

    .line 461
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/glass/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 463
    .local v8, "commonContentAction":Lorg/json/JSONObject;
    :try_start_0
    const-string v14, "type"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "READ_ALOUD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 464
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/google/glass/search/results/HtmlAnswerCard;->builtWithImplicitTts:Z

    if-nez v14, :cond_1

    .line 465
    const-string v14, "value"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 466
    .local v12, "ttsValue":Ljava/lang/String;
    const-string v14, "lang"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "lang"

    .line 467
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 468
    .local v11, "ttsLang":Ljava/lang/String;
    :goto_1
    new-instance v7, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    invoke-direct {v7, v12, v11}, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v6    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .local v7, "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    const/4 v2, 0x1

    .line 471
    :try_start_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v11}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 472
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    move-object v6, v7

    .line 474
    .end local v7    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v6    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    goto :goto_0

    .line 467
    .end local v11    # "ttsLang":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v11, "en"

    goto :goto_1

    .line 476
    .end local v12    # "ttsValue":Ljava/lang/String;
    :cond_4
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v14

    goto :goto_0

    .line 483
    .end local v8    # "commonContentAction":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 485
    .local v1, "action":Lorg/json/JSONObject;
    :try_start_3
    const-string v14, "type"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "READ_ALOUD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 486
    const-string v14, "value"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 487
    .restart local v12    # "ttsValue":Ljava/lang/String;
    const-string v14, "lang"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "lang"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 488
    .restart local v11    # "ttsLang":Ljava/lang/String;
    :goto_3
    new-instance v7, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    invoke-direct {v7, v12, v11}, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 489
    .end local v6    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v7    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    const/4 v2, 0x1

    .line 491
    :try_start_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v11}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 492
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    move-object v6, v7

    .line 494
    .end local v7    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v6    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    goto :goto_2

    .line 487
    .end local v11    # "ttsLang":Ljava/lang/String;
    :cond_7
    :try_start_5
    const-string v11, "en"

    goto :goto_3

    .line 495
    .end local v12    # "ttsValue":Ljava/lang/String;
    :cond_8
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 497
    :catch_1
    move-exception v14

    goto :goto_2

    .line 504
    .end local v1    # "action":Lorg/json/JSONObject;
    :cond_9
    if-nez v2, :cond_b

    .line 505
    if-nez v6, :cond_a

    if-eqz p1, :cond_a

    .line 506
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/glass/search/results/HtmlAnswerCard;->ttsFormatString:Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;

    .line 508
    :cond_a
    if-eqz v6, :cond_b

    iget-object v13, v6, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, v6, Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    .line 509
    invoke-static {v13}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 510
    const/4 v13, 0x0

    invoke-static {v6}, Lcom/google/glass/search/results/HtmlAnswerCard;->makeReadAloudActionSpec(Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 511
    const/4 v3, 0x1

    .line 515
    :cond_b
    new-instance v4, Lcom/google/glass/search/results/HtmlAnswerCard;

    const/4 v13, 0x0

    invoke-direct {v4, v9, v6, v5, v13}, Lcom/google/glass/search/results/HtmlAnswerCard;-><init>(Ljava/lang/String;Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;Lcom/google/glass/search/results/HtmlAnswerCard$1;)V

    .line 516
    .local v4, "built":Lcom/google/glass/search/results/HtmlAnswerCard;
    iput-boolean v3, v4, Lcom/google/glass/search/results/HtmlAnswerCard;->builtWithImplicitTts:Z

    .line 517
    return-object v4

    .line 497
    .end local v4    # "built":Lcom/google/glass/search/results/HtmlAnswerCard;
    .end local v6    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v1    # "action":Lorg/json/JSONObject;
    .restart local v7    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v11    # "ttsLang":Ljava/lang/String;
    .restart local v12    # "ttsValue":Ljava/lang/String;
    :catch_2
    move-exception v14

    move-object v6, v7

    .end local v7    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v6    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    goto :goto_2

    .line 478
    .end local v1    # "action":Lorg/json/JSONObject;
    .end local v6    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v7    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v8    # "commonContentAction":Lorg/json/JSONObject;
    :catch_3
    move-exception v14

    move-object v6, v7

    .end local v7    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v6    # "builtTts":Lcom/google/glass/search/results/HtmlAnswerCard$TtsFormatString;
    goto/16 :goto_0
.end method
