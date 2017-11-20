.class public final Lcom/google/android/youtube/core/model/Purchase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private expirationDate:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field private itemUri:Landroid/net/Uri;

.field private pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

.field private purchaseDate:Ljava/util/Date;

.field private purchasedVideo:Lcom/google/android/youtube/core/model/Video;

.field private status:Lcom/google/android/youtube/core/model/Purchase$Status;

.field private streamable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->OTHER:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 136
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$Status;->OTHER:Lcom/google/android/youtube/core/model/Purchase$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    .line 129
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 219
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    .line 220
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    .line 221
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    .line 222
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/PricingStructure;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 223
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 226
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->build()Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 211
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 213
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/youtube/core/model/Purchase;
    .locals 10

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase;

    .line 188
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 190
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    .line 191
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    .line 192
    iget-object v5, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    .line 193
    iget-object v6, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 194
    iget-object v7, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 195
    iget-boolean v8, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    .line 196
    iget-object v9, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 187
    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/Purchase;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase$ItemType;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;Lcom/google/android/youtube/core/model/PricingStructure;Lcom/google/android/youtube/core/model/Purchase$Status;ZLcom/google/android/youtube/core/model/Video;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->build()Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v0

    return-object v0
.end method

.method public final expirationDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    .line 152
    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public final itemType(Lcom/google/android/youtube/core/model/Purchase$ItemType;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 157
    return-object p0
.end method

.method public final itemUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    .line 162
    return-object p0
.end method

.method public final pricePaid(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 167
    return-object p0
.end method

.method public final purchaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    .line 147
    return-object p0
.end method

.method public final purchasedVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 182
    return-object p0
.end method

.method public final status(Lcom/google/android/youtube/core/model/Purchase$Status;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 172
    return-object p0
.end method

.method public final streamable(Z)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    .line 177
    return-object p0
.end method
