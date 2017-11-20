.class public Lcom/google/glass/musicplayer/cards/Category;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/musicplayer/cards/Card;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final artworkUri:Ljava/lang/String;

.field private final categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

.field private final name:Ljava/lang/String;

.field private final xdiIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/cards/Category;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    new-instance v0, Lcom/google/glass/musicplayer/cards/Category$1;

    invoke-direct {v0}, Lcom/google/glass/musicplayer/cards/Category$1;-><init>()V

    sput-object v0, Lcom/google/glass/musicplayer/cards/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->name:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->valueOf(Ljava/lang/String;)Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->artworkUri:Ljava/lang/String;

    .line 122
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->xdiIntent:Landroid/content/Intent;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/glass/musicplayer/cards/Category$CategoryType;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/Category;->name:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    .line 128
    iput-object p3, p0, Lcom/google/glass/musicplayer/cards/Category;->artworkUri:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/google/glass/musicplayer/cards/Category;->xdiIntent:Landroid/content/Intent;

    .line 130
    return-void
.end method


# virtual methods
.method public createResultView(Landroid/content/Context;)Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/google/glass/musicplayer/cards/CategoryCardView;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/musicplayer/cards/CategoryCardView;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Category;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 173
    instance-of v1, p1, Lcom/google/glass/musicplayer/cards/Category;

    if-eqz v1, :cond_0

    .line 174
    check-cast p1, Lcom/google/glass/musicplayer/cards/Category;

    .line 175
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Category;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Category;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    .line 176
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Category;->artworkUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Category;->artworkUri:Ljava/lang/String;

    .line 177
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Category;->xdiIntent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/glass/musicplayer/cards/Category;->xdiIntent:Landroid/content/Intent;

    .line 178
    invoke-static {v1, v2}, Lcom/google/glass/musicplayer/cards/IntentUtils;->equals(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 181
    :cond_0
    return v0
.end method

.method public getAlbumName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_album:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/google/glass/musicplayer/R$string;->unknown_artist:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->artworkUri:Ljava/lang/String;

    return-object v0
.end method

.method public getArtworkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoplayPriority()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x63

    return v0
.end method

.method public getCategoryIcon(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/google/glass/musicplayer/cards/Category$2;->$SwitchMap$com$google$glass$musicplayer$cards$Category$CategoryType:[I

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    sget-object v0, Lcom/google/glass/musicplayer/cards/Category;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown category type in getCategoryIcon. Returning default icon."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    sget v0, Lcom/google/glass/musicplayer/R$drawable;->ic_playlist:I

    :goto_0
    return v0

    .line 143
    :pswitch_0
    sget v0, Lcom/google/glass/musicplayer/R$drawable;->ic_playlist:I

    goto :goto_0

    .line 146
    :pswitch_1
    sget v0, Lcom/google/glass/musicplayer/R$drawable;->ic_radio:I

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getCategoryType()Lcom/google/glass/musicplayer/cards/Category$CategoryType;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    return-object v0
.end method

.method public getResultPriority()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getTopLevelString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/glass/musicplayer/cards/Card$Type;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/musicplayer/cards/Card$Type;->CATEGORY:Lcom/google/glass/musicplayer/cards/Card$Type;

    return-object v0
.end method

.method public getXdiIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->xdiIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 155
    const/16 v2, 0x1f

    .line 156
    const/4 v1, 0x4

    new-array v3, v1, [I

    .line 158
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Category;->name:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v0

    .line 159
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    aput v1, v3, v5

    .line 160
    const/4 v1, 0x2

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/Category;->artworkUri:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    aput v4, v3, v1

    .line 161
    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/Category;->xdiIntent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/google/glass/musicplayer/cards/IntentUtils;->hashCode(Landroid/content/Intent;)I

    move-result v4

    aput v4, v3, v1

    .line 164
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 165
    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return v1
.end method

.method public isBundle()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    const-string v0, "name: %s, categoryType = %s, artworkUri: %s, xdiIntent: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Category;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Category;->artworkUri:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/Category;->xdiIntent:Landroid/content/Intent;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->categoryType:Lcom/google/glass/musicplayer/cards/Category$CategoryType;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Category$CategoryType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->artworkUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/Category;->xdiIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/ParcelUtils;->writeParcelableToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 116
    return-void
.end method
