.class final Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;
.super Ljava/lang/Object;
.source "GlasswareCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/boutique/GlasswareCardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CardRenderer"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->context:Landroid/content/Context;

    .line 358
    return-void
.end method

.method private getSpeakableTextResourceId(Lcom/google/glass/boutique/BoutiqueUtils$CardType;)I
    .locals 4
    .param p1, "cardType"    # Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    .prologue
    .line 477
    sget-object v0, Lcom/google/glass/boutique/GlasswareCardHelper$6;->$SwitchMap$com$google$glass$boutique$BoutiqueUtils$CardType:[I

    invoke-virtual {p1}, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid card type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :pswitch_0
    sget v0, Lcom/google/glass/boutique/R$string;->speakable_install_complete_format:I

    .line 485
    :goto_0
    return v0

    .line 481
    :pswitch_1
    sget v0, Lcom/google/glass/boutique/R$string;->speakable_install_pending_format:I

    goto :goto_0

    .line 483
    :pswitch_2
    sget v0, Lcom/google/glass/boutique/R$string;->speakable_install_retrying_format:I

    goto :goto_0

    .line 485
    :pswitch_3
    sget v0, Lcom/google/glass/boutique/R$string;->speakable_uninstall_complete_format:I

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getTemplateResourceId(Lcom/google/glass/boutique/BoutiqueUtils$CardType;)I
    .locals 4
    .param p1, "cardType"    # Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    .prologue
    .line 462
    sget-object v0, Lcom/google/glass/boutique/GlasswareCardHelper$6;->$SwitchMap$com$google$glass$boutique$BoutiqueUtils$CardType:[I

    invoke-virtual {p1}, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid card type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :pswitch_0
    sget v0, Lcom/google/glass/boutique/R$string;->install_complete_format:I

    .line 470
    :goto_0
    return v0

    .line 466
    :pswitch_1
    sget v0, Lcom/google/glass/boutique/R$string;->install_pending_format:I

    goto :goto_0

    .line 468
    :pswitch_2
    sget v0, Lcom/google/glass/boutique/R$string;->install_retrying_format:I

    goto :goto_0

    .line 470
    :pswitch_3
    sget v0, Lcom/google/glass/boutique/R$string;->uninstall_complete_format:I

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method getMutedBrandColorCss(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "brandColor"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    .line 492
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 493
    .local v1, "parsedColor":I
    new-array v0, v5, [F

    .line 494
    .local v0, "hsv":[F
    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 495
    aget v3, v0, v7

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    aput v3, v0, v7

    .line 496
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    .line 498
    .local v2, "textColor":I
    const-string v3, "#%02x%02x%02x"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 499
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 498
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getTriggerString(Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "triggerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 421
    .local v1, "triggerString":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    .local v0, "trigger":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 423
    iget-object v3, p0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/boutique/R$string;->glassware_trigger_format:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 426
    .end local v0    # "trigger":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getTriggers(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Ljava/util/Set;
    .locals 6
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasApkMetadata()Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 458
    :cond_0
    :goto_0
    return-object v2

    .line 439
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 445
    :cond_2
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$1100()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$1100()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "packageName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 449
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->context:Landroid/content/Context;

    .line 450
    invoke-static {v4}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 453
    .local v3, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 454
    .local v2, "triggerSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/glass/app/VoiceTrigger;

    .line 455
    .local v1, "trigger":Lcom/google/android/glass/app/VoiceTrigger;
    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->context:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;Lcom/google/glass/boutique/BoutiqueUtils$CardType;)V
    .locals 14
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;
    .param p3, "cardType"    # Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    .prologue
    .line 368
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getSpeakableName()Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "speakableName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getBrandColor()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "brandColor":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 373
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 375
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 376
    const-string v1, "#222222"

    .line 379
    :cond_1
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$500()Lcom/google/common/collect/ImmutableSet;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v2, "1.0"

    .line 381
    .local v2, "headerOpacity":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$500()Lcom/google/common/collect/ImmutableSet;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v4, "0.5"

    .line 387
    .local v4, "nameOpacity":Ljava/lang/String;
    :goto_1
    sget-object v9, Lcom/google/glass/boutique/BoutiqueUtils$CardType;->INSTALL_COMPLETE:Lcom/google/glass/boutique/BoutiqueUtils$CardType;

    move-object/from16 v0, p3

    if-ne v0, v9, :cond_5

    .line 388
    const-string v7, ""

    .line 389
    .local v7, "triggerString":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->hasApkMetadata()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/google/glass/util/Labs$Feature;->B_WC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v9}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 390
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->getTriggers(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Ljava/util/Set;

    move-result-object v8

    .line 391
    .local v8, "triggers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v8}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->getTriggerString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    .line 393
    .end local v8    # "triggers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    iget-object v9, p0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->getTemplateResourceId(Lcom/google/glass/boutique/BoutiqueUtils$CardType;)I

    move-result v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 394
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    .line 393
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .end local v7    # "triggerString":Ljava/lang/String;
    .local v3, "installationStatus":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->context:Landroid/content/Context;

    .line 401
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->getSpeakableTextResourceId(Lcom/google/glass/boutique/BoutiqueUtils$CardType;)I

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "speakableInstallationStatus":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->context:Landroid/content/Context;

    sget v10, Lcom/google/glass/boutique/R$string;->installation_card_html:I

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 405
    invoke-virtual {p0, v1}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->getMutedBrandColorCss(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    .line 407
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getIconUrl()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object v2, v11, v12

    const/4 v12, 0x4

    aput-object v4, v11, v12

    const/4 v12, 0x5

    aput-object v3, v11, v12

    .line 403
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 411
    invoke-virtual {p1, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 412
    return-void

    .line 379
    .end local v2    # "headerOpacity":Ljava/lang/String;
    .end local v3    # "installationStatus":Ljava/lang/String;
    .end local v4    # "nameOpacity":Ljava/lang/String;
    .end local v5    # "speakableInstallationStatus":Ljava/lang/String;
    :cond_3
    const-string v2, "0.5"

    goto/16 :goto_0

    .line 381
    .restart local v2    # "headerOpacity":Ljava/lang/String;
    :cond_4
    const-string v4, "1.0"

    goto :goto_1

    .line 396
    .restart local v4    # "nameOpacity":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/glass/boutique/GlasswareCardHelper$CardRenderer;->getTemplateResourceId(Lcom/google/glass/boutique/BoutiqueUtils$CardType;)I

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 397
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 396
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "installationStatus":Ljava/lang/String;
    goto :goto_2
.end method
