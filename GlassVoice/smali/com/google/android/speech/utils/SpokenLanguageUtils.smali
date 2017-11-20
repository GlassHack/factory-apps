.class public Lcom/google/android/speech/utils/SpokenLanguageUtils;
.super Ljava/lang/Object;
.source "SpokenLanguageUtils.java"


# static fields
.field private static final DEFAULT_BCP47_LOCALE:Ljava/lang/String; = "en-001"

.field private static final DEFAULT_LOCALE:Ljava/util/Locale;

.field private static final TAG:Ljava/lang/String; = "SpokenLanguageUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/google/android/speech/utils/SpokenLanguageUtils;->DEFAULT_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultMainSpokenLanguageBcp47(Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/lang/String;
    .locals 14
    .param p0, "phoneJavaLocale"    # Ljava/lang/String;
    .param p1, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .prologue
    .line 33
    iget-object v0, p1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v6, v4

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v7, v0, v6

    .line 34
    .local v7, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v7, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v4, 0x0

    .end local v6    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v4    # "i$":I
    .end local v9    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v3, v1, v5

    .line 35
    .local v3, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    iget-object v2, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v10, :cond_1

    aget-object v11, v2, v4

    .line 36
    .local v11, "locale":Ljava/lang/String;
    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 37
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v12

    .line 47
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v4    # "i$":I
    .end local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v10    # "len$":I
    .end local v11    # "locale":Ljava/lang/String;
    :goto_3
    return-object v12

    .line 35
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v4    # "i$":I
    .restart local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .restart local v10    # "len$":I
    .restart local v11    # "locale":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 34
    .end local v11    # "locale":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 33
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v10    # "len$":I
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v6, v4

    .end local v4    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 43
    .end local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_3
    const-string v12, "_"

    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 44
    const/4 v12, 0x0

    const/16 v13, 0x5f

    invoke-virtual {p0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0, p1}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getDefaultMainSpokenLanguageBcp47(Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 47
    :cond_4
    const-string v12, "en-001"

    goto :goto_3
.end method

.method public static getDialectByDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 5
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 329
    .local v3, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    invoke-static {v3, p1}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getDialectByDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v1

    .line 330
    .local v1, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    if-eqz v1, :cond_0

    .line 334
    .end local v1    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v3    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :goto_1
    return-object v1

    .line 328
    .restart local v1    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v3    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v3    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getDialectByDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 5
    .param p0, "language"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 339
    .local v1, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    .end local v1    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :goto_1
    return-object v1

    .line 338
    .restart local v1    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDialectDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "languageDisplayName"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p0, p1}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getLanguageByDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    move-result-object v2

    .line 296
    .local v2, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    if-nez v2, :cond_1

    .line 297
    const-string v3, "SpokenLanguageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#getDialectDisplayName - language not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 298
    const/4 v0, 0x0

    .line 307
    :cond_0
    return-object v0

    .line 301
    :cond_1
    iget-object v3, v2, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 303
    .local v0, "dialectDisplayNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 304
    iget-object v3, v2, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "localeBcp47"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 93
    const-string v8, "SpokenLanguageUtils"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8, p1, v9}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 95
    .local v4, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v4, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 96
    .local v7, "mainLanguage":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    const-string v8, "SpokenLanguageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Main language:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    invoke-virtual {v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 103
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v2    # "i$":I
    .end local v4    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v6    # "len$":I
    .end local v7    # "mainLanguage":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :goto_2
    return-object v8

    .line 95
    .restart local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v2    # "i$":I
    .restart local v4    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .restart local v6    # "len$":I
    .restart local v7    # "mainLanguage":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    .end local v7    # "mainLanguage":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 102
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v4    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v6    # "len$":I
    :cond_2
    const-string v8, "SpokenLanguageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No display name for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 103
    const-string v8, ""

    goto :goto_2
.end method

.method public static getDisplayNames([Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;)[Ljava/lang/CharSequence;
    .locals 3
    .param p0, "dialects"    # [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .prologue
    .line 107
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 109
    .local v0, "displayNames":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 110
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-object v0
.end method

.method public static getEmbeddedBcp47(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "embeddedBcp47Locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->embeddedRecognitionResources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 206
    .local v3, "languagePack":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "languagePack":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_0
    return-object v1
.end method

.method public static getLanguageByBcp47Locale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 9
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "spokenLocaleBcp47"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, v0, v4

    .line 349
    .local v5, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v2, v1, v3

    .line 350
    .local v2, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 355
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v3    # "i$":I
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :goto_2
    return-object v5

    .line 349
    .restart local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v3    # "i$":I
    .restart local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .restart local v7    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 348
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 355
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static getLanguageByDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 7
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 314
    .local v2, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    const-string v4, "SpokenLanguageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#getLanguageByDisplayName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    .end local v2    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :goto_1
    return-object v2

    .line 312
    .restart local v2    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v2    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getLanguageDialect(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 9
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, v0, v4

    .line 228
    .local v5, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v2, v1, v3

    .line 229
    .local v2, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 234
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v3    # "i$":I
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :goto_2
    return-object v2

    .line 228
    .restart local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v3    # "i$":I
    .restart local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .restart local v7    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 227
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 234
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static getLanguageDisplayNames(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "suffixForMoreDialect"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 270
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 274
    .local v0, "displayNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    aget-object v2, v3, v1

    .line 276
    .local v2, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v3, v2, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 277
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 274
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    if-eqz p1, :cond_1

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 288
    .end local v2    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_2
    return-object v0
.end method

.method public static getMainJavaLocaleForBcp47(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {p0, p1}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getLanguageDialect(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v0

    .line 361
    .local v0, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasMainJavaLocale()Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    :cond_0
    sget-object v1, Lcom/google/android/speech/utils/SpokenLanguageUtils;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 364
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getMainJavaLocale()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/speech/utils/SpokenLanguageUtils;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-static {v1, v2}, Lcom/google/android/shared/util/LocaleUtils;->parseJavaLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSpokenBcp47Locale(Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "settings"    # Lcom/google/android/speech/SpeechSettings;
    .param p1, "bcp47LocaleFromIntent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    if-eqz p1, :cond_1

    .line 250
    invoke-interface {p0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getLanguageDialect(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    .end local p1    # "bcp47LocaleFromIntent":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 255
    .restart local p1    # "bcp47LocaleFromIntent":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getSpokenLanguageByJavaLocale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v0

    .line 257
    .local v0, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 265
    .end local v0    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    invoke-interface {p0}, Lcom/google/android/speech/SpeechSettings;->getSpokenLocaleBcp47()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getSpokenBcp47Locale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "javaLocale"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v6, v4

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v7, v0, v6

    .line 140
    .local v7, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v7, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v4, 0x0

    .end local v6    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v4    # "i$":I
    .end local v9    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v3, v1, v5

    .line 141
    .local v3, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    iget-object v2, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v10, :cond_1

    aget-object v11, v2, v4

    .line 142
    .local v11, "locale":Ljava/lang/String;
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 143
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v12

    .line 148
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v4    # "i$":I
    .end local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v10    # "len$":I
    .end local v11    # "locale":Ljava/lang/String;
    :goto_3
    return-object v12

    .line 141
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v4    # "i$":I
    .restart local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .restart local v10    # "len$":I
    .restart local v11    # "locale":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 140
    .end local v11    # "locale":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 139
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v10    # "len$":I
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v6, v4

    .end local v4    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 148
    .end local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_3
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public static varargs getSpokenBcp47Locale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "javaLocales"    # [Ljava/lang/String;

    .prologue
    .line 123
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 124
    .local v2, "javaLocale":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getSpokenBcp47Locale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "spokenBcp47Locale":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 130
    .end local v2    # "javaLocale":Ljava/lang/String;
    .end local v4    # "spokenBcp47Locale":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 123
    .restart local v2    # "javaLocale":Ljava/lang/String;
    .restart local v4    # "spokenBcp47Locale":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "javaLocale":Ljava/lang/String;
    .end local v4    # "spokenBcp47Locale":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getSpokenLanguageByBcp47Locale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 9
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, v0, v4

    .line 174
    .local v5, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v2, v1, v3

    .line 175
    .local v2, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 180
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v3    # "i$":I
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :goto_2
    return-object v2

    .line 174
    .restart local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v3    # "i$":I
    .restart local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .restart local v7    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 173
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 180
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static getSpokenLanguageByJavaLocale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 13
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "javaLocale"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v6, v4

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v7, v0, v6

    .line 157
    .local v7, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v7, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v4, 0x0

    .end local v6    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v4    # "i$":I
    .end local v9    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v3, v1, v5

    .line 158
    .local v3, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    iget-object v2, v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v10, :cond_1

    aget-object v11, v2, v4

    .line 159
    .local v11, "locale":Ljava/lang/String;
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 165
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v4    # "i$":I
    .end local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v10    # "len$":I
    .end local v11    # "locale":Ljava/lang/String;
    :goto_3
    return-object v3

    .line 158
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v4    # "i$":I
    .restart local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .restart local v10    # "len$":I
    .restart local v11    # "locale":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 157
    .end local v11    # "locale":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 156
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v10    # "len$":I
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v6, v4

    .end local v4    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 165
    .end local v7    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static getSupportedBcp47Locales(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v2, "bcp47Locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v8, v0, v5

    .line 56
    .local v8, "mainLanguageGroup":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v8, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v3, v1, v4

    .line 57
    .local v3, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    .end local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 60
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v7    # "len$":I
    .end local v8    # "mainLanguageGroup":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_1
    return-object v2
.end method

.method public static getSupportedDisplayNames(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, "bcp47Locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v8, v0, v5

    .line 66
    .local v8, "mainLanguageGroup":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v8, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v3, v1, v4

    .line 67
    .local v3, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    .end local v3    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 70
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v7    # "len$":I
    .end local v8    # "mainLanguageGroup":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    :cond_1
    return-object v2
.end method

.method public static getVoiceImeDialects(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v8, "voiceImeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;>;"
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, v0, v4

    .line 194
    .local v5, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v2, v1, v3

    .line 195
    .local v2, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getImeSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 196
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 200
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :cond_2
    return-object v8
.end method

.method public static getVoiceImeMainLanguage(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 9
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->languages:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .local v0, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, v0, v4

    .line 214
    .local v5, "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    iget-object v1, v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .local v1, "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v2, v1, v3

    .line 215
    .local v2, "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getImeSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v3    # "i$":I
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :goto_2
    return-object v2

    .line 214
    .restart local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .restart local v3    # "i$":I
    .restart local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .restart local v7    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    .end local v2    # "dialect":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 220
    .end local v1    # "arr$":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .end local v5    # "language":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .end local v7    # "len$":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static isSupportedBcp47Locale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Z
    .locals 2
    .param p0, "configuration"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .param p1, "localeBcp47"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateSpokenLanguage(Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;)Z
    .locals 4
    .param p0, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p1, "localeBcp47"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "updated":Z
    invoke-interface {p0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->isSupportedBcp47Locale(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "phoneLocale":Ljava/lang/String;
    invoke-interface {p0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getDefaultMainSpokenLanguageBcp47(Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    .local v0, "auto":Z
    invoke-interface {p0, p1, v0}, Lcom/google/android/speech/SpeechSettings;->setSpokenLanguageBcp47(Ljava/lang/String;Z)V

    .line 82
    const/4 v2, 0x1

    .line 84
    .end local v0    # "auto":Z
    .end local v1    # "phoneLocale":Ljava/lang/String;
    :cond_0
    return v2
.end method
