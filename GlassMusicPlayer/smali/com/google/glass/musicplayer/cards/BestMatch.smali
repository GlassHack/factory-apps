.class public Lcom/google/glass/musicplayer/cards/BestMatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/musicplayer/cards/Card;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final innerCard:Lcom/google/glass/musicplayer/cards/Card;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/musicplayer/cards/BestMatch$1;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/cards/BestMatch$1;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/cards/BestMatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-class v0, Lcom/google/glass/musicplayer/cards/Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/musicplayer/cards/Card;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/musicplayer/cards/Card;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    .line 99
    return-void
.end method


# virtual methods
.method public createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/musicplayer/cards/Card;->createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 125
    instance-of v0, p1, Lcom/google/glass/musicplayer/cards/BestMatch;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Lcom/google/glass/musicplayer/cards/BestMatch;

    .line 127
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    iget-object v1, p1, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/musicplayer/cards/Card;->getAlbumName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/musicplayer/cards/Card;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->getArtworkUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoplayPriority()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getInnerCard()Lcom/google/glass/musicplayer/cards/Card;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    return-object v0
.end method

.method public getResultPriority()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    return v0
.end method

.method public getTopLevelString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/musicplayer/cards/Card;->getTopLevelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->BEST_MATCH:Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method

.method public getXdiIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->getXdiIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 110
    const/16 v2, 0x1f

    .line 111
    new-array v3, v1, [I

    .line 113
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    .line 116
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 117
    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return v1
.end method

.method public isBundle()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    invoke-interface {v0}, Lcom/google/glass/musicplayer/cards/Card;->isBundle()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    const-string v0, "innerCard: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/BestMatch;->innerCard:Lcom/google/glass/musicplayer/cards/Card;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 91
    return-void
.end method
