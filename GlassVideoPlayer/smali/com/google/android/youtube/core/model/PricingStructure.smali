.class public final Lcom/google/android/youtube/core/model/PricingStructure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final duration:Lcom/google/android/youtube/core/model/Duration;

.field public final formats:Ljava/util/List;

.field private volatile hashCode:I

.field public final infoUri:Landroid/net/Uri;

.field public final offerId:Ljava/lang/String;

.field public final price:Lcom/google/android/youtube/core/model/Money;

.field public final type:Lcom/google/android/youtube/core/model/PricingStructure$Type;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 52
    iput-object p2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 53
    iput-object p3, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    .line 54
    iput-object p4, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    .line 55
    iput-object p5, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    .line 56
    iput-object p6, p0, Lcom/google/android/youtube/core/model/PricingStructure;->offerId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static createPurchase(Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure;
    .locals 7

    .prologue
    .line 72
    const-string v0, "price may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "formats may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure;

    sget-object v1, Lcom/google/android/youtube/core/model/PricingStructure$Type;->PURCHASE:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/PricingStructure;-><init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure;
    .locals 7

    .prologue
    .line 92
    const-string v0, "duration may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "price may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "formats may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure;

    sget-object v1, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/PricingStructure;-><init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSubscription(Lcom/google/android/youtube/core/model/Money;Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 105
    const-string v0, "price may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure;

    sget-object v1, Lcom/google/android/youtube/core/model/PricingStructure$Type;->SUBSCRIPTION:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v3, p0

    move-object v5, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/PricingStructure;-><init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/PricingStructure;->buildUpon()Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type(Lcom/google/android/youtube/core/model/PricingStructure$Type;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration(Lcom/google/android/youtube/core/model/Duration;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price(Lcom/google/android/youtube/core/model/Money;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats(Ljava/util/List;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->offerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->offerId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    .line 154
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    instance-of v2, p1, Lcom/google/android/youtube/core/model/PricingStructure;

    if-nez v2, :cond_2

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    check-cast p1, Lcom/google/android/youtube/core/model/PricingStructure;

    .line 119
    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v2, v3, :cond_3

    .line 120
    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->offerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/PricingStructure;->offerId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 119
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    iget v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->hashCode:I

    .line 130
    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/PricingStructure$Type;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 133
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Duration;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->offerId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->offerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Money;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    iput v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->hashCode:I

    .line 140
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0

    :cond_3
    move v0, v1

    .line 134
    goto :goto_1

    :cond_4
    move v0, v1

    .line 135
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    sget-object v2, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "duration=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string v1, "info=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string v1, "money=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const-string v1, "formats=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string v1, "offerId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->offerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
