.class public final Lcom/google/android/youtube/core/model/PricingStructure$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private duration:Lcom/google/android/youtube/core/model/Duration;

.field private formats:Ljava/util/List;

.field private infoUri:Landroid/net/Uri;

.field private offerId:Ljava/lang/String;

.field private price:Lcom/google/android/youtube/core/model/Money;

.field private type:Lcom/google/android/youtube/core/model/PricingStructure$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/PricingStructure$Type;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Duration;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 236
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Money;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    .line 238
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    .line 239
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->offerId:Ljava/lang/String;

    .line 240
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->build()Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->offerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 230
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/youtube/core/model/PricingStructure;
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    sget-object v2, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v1, v2, :cond_1

    .line 213
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->offerId:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/youtube/core/model/PricingStructure;->createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    .line 215
    :goto_1
    return-object v0

    .line 211
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->offerId:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/youtube/core/model/PricingStructure;->createPurchase(Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    goto :goto_1
.end method

.method public final duration(Lcom/google/android/youtube/core/model/Duration;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 187
    return-object p0
.end method

.method public final formats(Ljava/util/List;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    .line 202
    return-object p0
.end method

.method public final infoUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    .line 192
    return-object p0
.end method

.method public final offerId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->offerId:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public final price(Lcom/google/android/youtube/core/model/Money;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    .line 197
    return-object p0
.end method

.method public final type(Lcom/google/android/youtube/core/model/PricingStructure$Type;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 182
    return-object p0
.end method
