.class final Lcom/google/android/speech/embedded/LanguagePackUtils$1;
.super Ljava/lang/Object;
.source "LanguagePackUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/LanguagePackUtils;->newLanguagePackComparator(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;


# direct methods
.method constructor <init>(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/speech/embedded/LanguagePackUtils$1;->val$config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)I
    .locals 6
    .param p1, "lhs"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .param p2, "rhs"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    iget-object v4, p0, Lcom/google/android/speech/embedded/LanguagePackUtils$1;->val$config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "a":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/speech/embedded/LanguagePackUtils$1;->val$config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    invoke-virtual {p2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/speech/utils/SpokenLanguageUtils;->getDisplayName(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "b":Ljava/lang/String;
    if-nez v0, :cond_1

    move v5, v2

    :goto_0
    if-nez v1, :cond_2

    move v4, v2

    :goto_1
    xor-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 131
    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 135
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v5, v3

    .line 130
    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    .line 132
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v3

    .line 135
    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/speech/embedded/LanguagePackUtils$1;->compare(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)I

    move-result v0

    return v0
.end method
