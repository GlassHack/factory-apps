.class public Lcom/google/android/speech/embedded/LanguagePackUtils;
.super Ljava/lang/Object;
.source "LanguagePackUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LanguagePackUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDownloadFilename(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Ljava/lang/String;
    .locals 2
    .param p0, "pack"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findById(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .param p0, "target"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .param p1, "list"    # [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/speech/embedded/LanguagePackUtils;->findById(Ljava/lang/String;[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    return-object v0
.end method

.method public static findById(Ljava/lang/String;[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "list"    # [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .prologue
    .line 49
    array-length v0, p1

    .line 50
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 51
    aget-object v2, p1, v1

    .line 52
    .local v2, "listItem":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    .end local v2    # "listItem":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :goto_1
    return-object v2

    .line 50
    .restart local v2    # "listItem":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "listItem":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getCompatibleLanguagePacks(Ljava/util/Map;[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)Ljava/util/Map;
    .locals 6
    .param p1, "fromConfig"    # [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .param p2, "supportedVersions"    # [I
    .param p3, "deviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;[",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            "[II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "installed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 102
    .local v1, "compatible":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 103
    .local v4, "pack":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-static {v1, v4, p2, p3}, Lcom/google/android/speech/embedded/LanguagePackUtils;->maybeAddCompatible(Ljava/util/HashMap;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)V

    goto :goto_0

    .line 105
    .end local v4    # "pack":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 106
    .restart local v4    # "pack":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-static {v1, v4, p2, p3}, Lcom/google/android/speech/embedded/LanguagePackUtils;->maybeAddCompatible(Ljava/util/HashMap;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v4    # "pack":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_1
    return-object v1
.end method

.method public static isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)Z
    .locals 7
    .param p0, "languagePack"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .param p1, "supportedVersions"    # [I
    .param p2, "deviceClass"    # I

    .prologue
    const/4 v4, 0x0

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "compatibleWithEngine":Z
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    array-length v1, v5

    .line 70
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v4

    .line 74
    :cond_1
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion:[I

    add-int/lit8 v6, v1, -0x1

    aget v2, v5, v6

    .line 76
    .local v2, "formatVersion":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 77
    aget v5, p1, v3

    if-ne v5, v2, :cond_4

    .line 78
    const/4 v0, 0x1

    .line 83
    :cond_2
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getMinimumDeviceClass()I

    move-result v5

    if-ge p2, v5, :cond_3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasMinimumDeviceClass()Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 76
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static maybeAddCompatible(Ljava/util/HashMap;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)V
    .locals 3
    .param p1, "pack"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .param p2, "supportedVersions"    # [I
    .param p3, "deviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            "[II)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "compatible":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "locale":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/google/android/speech/embedded/LanguagePackUtils;->isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    return-void
.end method

.method public static newLanguagePackComparator(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/Comparator;
    .locals 1
    .param p0, "config"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/speech/embedded/LanguagePackUtils$1;

    invoke-direct {v0, p0}, Lcom/google/android/speech/embedded/LanguagePackUtils$1;-><init>(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)V

    return-object v0
.end method
