.class public Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "S3UserInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/s3/S3$S3UserInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final OAUTH_PREFIX:Ljava/lang/String; = "oauth2:"

.field private static final TAG:Ljava/lang/String; = "S3UserInfoBuilderTask"


# instance fields
.field private final mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

.field private final mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

.field private final mLocationOverride:Landroid/location/Location;

.field private final mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

.field private final mSpokenLocale:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;Lcom/google/speech/s3/S3$S3UserInfo;)V
    .locals 1
    .param p1, "authTokenHelper"    # Lcom/google/android/speech/helper/AuthTokenHelper;
    .param p2, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p3, "locationHelper"    # Lcom/google/android/speech/helper/SpeechLocationHelper;
    .param p4, "spokenLocaleBcp47"    # Ljava/lang/String;
    .param p5, "locationOverride"    # Landroid/location/Location;
    .param p6, "s3UserInfo"    # Lcom/google/speech/s3/S3$S3UserInfo;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    const-string v0, "S3UserInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    .line 66
    iput-object p2, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 67
    iput-object p3, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    .line 68
    iput-object p4, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpokenLocale:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationOverride:Landroid/location/Location;

    .line 70
    iput-object p6, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 71
    return-void
.end method

.method private addAuthTokens(Ljava/lang/String;Lcom/google/speech/s3/S3$S3UserInfo;)V
    .locals 7
    .param p1, "tokenType"    # Ljava/lang/String;
    .param p2, "userInfo"    # Lcom/google/speech/s3/S3$S3UserInfo;

    .prologue
    .line 106
    iget-object v4, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    const-wide/16 v5, 0x3e8

    invoke-interface {v4, p1, v5, v6}, Lcom/google/android/speech/helper/AuthTokenHelper;->blockingGetAllTokens(Ljava/lang/String;J)Ljava/util/Collection;

    move-result-object v1

    .line 107
    .local v1, "authTokens":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 108
    iget-object v4, p2, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    array-length v3, v4

    .line 109
    .local v3, "offset":I
    iget-object v4, p2, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/shared/util/ProtoUtils;->extend([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/speech/s3/S3$AuthToken;

    iput-object v4, p2, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    .line 110
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "authToken":Ljava/lang/String;
    iget-object v4, p2, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    new-instance v5, Lcom/google/speech/s3/S3$AuthToken;

    invoke-direct {v5}, Lcom/google/speech/s3/S3$AuthToken;-><init>()V

    invoke-static {p1}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->maybeStripOAuthPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/speech/s3/S3$AuthToken;->setName(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/speech/s3/S3$AuthToken;->setToken(Ljava/lang/String;)Lcom/google/speech/s3/S3$AuthToken;

    move-result-object v5

    aput-object v5, v4, v3

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "authToken":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "offset":I
    :cond_0
    const-string v4, "S3UserInfoBuilderTask"

    const-string v5, "Failed fetching auth."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 119
    :cond_1
    return-void
.end method

.method private buildNewS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 122
    new-instance v4, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v4}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    iget-object v5, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v5}, Lcom/google/android/speech/SpeechSettings;->getInstallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/speech/s3/S3$S3UserInfo;->setInstallId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v2

    .line 124
    .local v2, "s3UserInfo":Lcom/google/speech/s3/S3$S3UserInfo;
    new-instance v4, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v4}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/speech/s3/S3$Locale;->setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/speech/s3/S3$Locale;->setFormat(I)Lcom/google/speech/s3/S3$Locale;

    move-result-object v4

    iput-object v4, v2, Lcom/google/speech/s3/S3$S3UserInfo;->userLocale:Lcom/google/speech/s3/S3$Locale;

    .line 128
    iget-object v4, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v4}, Lcom/google/android/speech/SpeechSettings;->getVoiceSearchTokenType()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "tokenType":Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->addAuthTokens(Ljava/lang/String;Lcom/google/speech/s3/S3$S3UserInfo;)V

    .line 132
    iget-object v4, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    invoke-interface {v4}, Lcom/google/android/speech/helper/SpeechLocationHelper;->shouldSendLocation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    invoke-interface {v4}, Lcom/google/android/speech/helper/SpeechLocationHelper;->getXGeoLocation()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "location":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationOverride:Landroid/location/Location;

    if-eqz v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mLocationOverride:Landroid/location/Location;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/search/core/google/XGeoEncoder;->createHeader(Landroid/location/Location;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "locationString":Ljava/lang/String;
    const-string v4, "S3UserInfoBuilderTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overriding Location to S3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v2, v1}, Lcom/google/speech/s3/S3$S3UserInfo;->setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    .line 154
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "locationString":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v4}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    iget-object v5, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpokenLocale:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/speech/s3/S3$Locale;->setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/speech/s3/S3$Locale;->setFormat(I)Lcom/google/speech/s3/S3$Locale;

    move-result-object v4

    iput-object v4, v2, Lcom/google/speech/s3/S3$S3UserInfo;->spokenLanguage:Lcom/google/speech/s3/S3$Locale;

    .line 158
    return-object v2

    .line 139
    .restart local v0    # "location":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 140
    const-string v4, "S3UserInfoBuilderTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Valid Location in S3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v2, v0}, Lcom/google/speech/s3/S3$S3UserInfo;->setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 146
    :cond_1
    const-string v4, "S3UserInfoBuilderTask"

    const-string v5, "Set Location in S3: w , Location setting: ON"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 147
    const-string/jumbo v4, "w "

    invoke-virtual {v2, v4}, Lcom/google/speech/s3/S3$S3UserInfo;->setXGeoLocation(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0

    .line 150
    .end local v0    # "location":Ljava/lang/String;
    :cond_2
    const-string v4, "S3UserInfoBuilderTask"

    const-string v5, "Don\'t Set Location in S3, Location setting: OFF"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v2, v7}, Lcom/google/speech/s3/S3$S3UserInfo;->setUsePreciseGeolocation(Z)Lcom/google/speech/s3/S3$S3UserInfo;

    goto :goto_0
.end method

.method public static getAuthTokenRefreshingBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/speech/s3/S3$S3UserInfo;Lcom/google/android/speech/SpeechSettings;)Ljava/util/concurrent/Callable;
    .locals 7
    .param p0, "authTokenHelper"    # Lcom/google/android/speech/helper/AuthTokenHelper;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "userInfo"    # Lcom/google/speech/s3/S3$S3UserInfo;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/helper/AuthTokenHelper;",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            "Lcom/google/android/speech/SpeechSettings;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;

    move-object v1, p0

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;-><init>(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;Lcom/google/speech/s3/S3$S3UserInfo;)V

    return-object v0
.end method

.method public static getBuilder(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;)Ljava/util/concurrent/Callable;
    .locals 7
    .param p0, "authTokenHelper"    # Lcom/google/android/speech/helper/AuthTokenHelper;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "locationHelper"    # Lcom/google/android/speech/helper/SpeechLocationHelper;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "spokenLocaleBcp47"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "locationOverride"    # Landroid/location/Location;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/helper/AuthTokenHelper;",
            "Lcom/google/android/speech/SpeechSettings;",
            "Lcom/google/android/speech/helper/SpeechLocationHelper;",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/google/speech/s3/S3$S3UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;-><init>(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/helper/SpeechLocationHelper;Ljava/lang/String;Landroid/location/Location;Lcom/google/speech/s3/S3$S3UserInfo;)V

    return-object v0
.end method

.method private static maybeStripOAuthPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tokenType"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "oauth2:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "oauth2:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    .end local p0    # "tokenType":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private refreshS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 7

    .prologue
    .line 87
    iget-object v5, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

    iget-object v0, v5, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    .local v0, "arr$":[Lcom/google/speech/s3/S3$AuthToken;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 88
    .local v4, "token":Lcom/google/speech/s3/S3$AuthToken;
    iget-object v5, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mAuthTokenHelper:Lcom/google/android/speech/helper/AuthTokenHelper;

    invoke-virtual {v4}, Lcom/google/speech/s3/S3$AuthToken;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/speech/helper/AuthTokenHelper;->invalidateToken(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "token":Lcom/google/speech/s3/S3$AuthToken;
    :cond_0
    iget-object v5, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

    new-instance v6, Lcom/google/speech/s3/S3$S3UserInfo;

    invoke-direct {v6}, Lcom/google/speech/s3/S3$S3UserInfo;-><init>()V

    invoke-static {v5, v6}, Lcom/google/android/shared/util/ProtoUtils;->copyOf(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v3

    check-cast v3, Lcom/google/speech/s3/S3$S3UserInfo;

    .line 92
    .local v3, "refreshedInfo":Lcom/google/speech/s3/S3$S3UserInfo;
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/speech/s3/S3$AuthToken;

    iput-object v5, v3, Lcom/google/speech/s3/S3$S3UserInfo;->authToken:[Lcom/google/speech/s3/S3$AuthToken;

    .line 93
    iget-object v5, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v5}, Lcom/google/android/speech/SpeechSettings;->getVoiceSearchTokenType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->addAuthTokens(Ljava/lang/String;Lcom/google/speech/s3/S3$S3UserInfo;)V

    .line 95
    return-object v3
.end method


# virtual methods
.method protected build()Lcom/google/speech/s3/S3$S3UserInfo;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->mS3UserInfo:Lcom/google/speech/s3/S3$S3UserInfo;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->buildNewS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->refreshS3UserInfo()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/S3UserInfoBuilderTask;->build()Lcom/google/speech/s3/S3$S3UserInfo;

    move-result-object v0

    return-object v0
.end method
