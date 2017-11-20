.class final Lcom/google/android/youtube/core/converter/http/fh;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;)V
    .locals 8

    .prologue
    .line 744
    const-string v0, "type"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    const-string v0, "yt:duration"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    const-string v0, "currency"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    const-string v3, "price"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 748
    const-string v4, "info"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 749
    const-string v5, "yt:formats"

    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 750
    const-string v6, "yt:offerId"

    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 755
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 756
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing amount, currency"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :catch_0
    move-exception v0

    .line 783
    const-string v1, "Unable to parse <media:price> tag"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 785
    :goto_0
    return-void

    .line 759
    :cond_1
    :try_start_1
    new-instance v7, Lcom/google/android/youtube/core/model/Money;

    invoke-direct {v7, v3, v0}, Lcom/google/android/youtube/core/model/Money;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, ","

    invoke-static {v5, v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 761
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 764
    :goto_1
    const-string v4, "rent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 765
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 768
    :cond_3
    invoke-static {v2}, Lcom/google/android/youtube/core/model/Duration;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Duration;

    move-result-object v1

    .line 769
    invoke-static {v1, v7, v3, v0, v6}, Lcom/google/android/youtube/core/model/PricingStructure;->createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    move-object v1, v0

    .line 779
    :goto_2
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 780
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->addPricing(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 771
    :cond_4
    const-string v2, "purchase"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 772
    invoke-static {v7, v3, v0, v6}, Lcom/google/android/youtube/core/model/PricingStructure;->createPurchase(Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 773
    :cond_5
    const-string v0, "subscription"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 774
    invoke-static {v7, v6}, Lcom/google/android/youtube/core/model/PricingStructure;->createSubscription(Lcom/google/android/youtube/core/model/Money;Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 776
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unexpected purchase type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
