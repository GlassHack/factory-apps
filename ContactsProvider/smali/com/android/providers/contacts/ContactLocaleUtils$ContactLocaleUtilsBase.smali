.class Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactLocaleUtilsBase"
.end annotation


# instance fields
.field protected final mAlphabeticIndex:Llibcore/icu/AlphabeticIndex$ImmutableIndex;

.field private final mAlphabeticIndexBucketCount:I

.field private final mNumberBucketIndex:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Llibcore/icu/AlphabeticIndex;

    invoke-direct {v0, p1}, Llibcore/icu/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->setMaxLabelCount(I)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/icu/AlphabeticIndex;->addLabels(Ljava/util/Locale;)Llibcore/icu/AlphabeticIndex;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/icu/AlphabeticIndex;->getImmutableIndex()Llibcore/icu/AlphabeticIndex$ImmutableIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Llibcore/icu/AlphabeticIndex$ImmutableIndex;

    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Llibcore/icu/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    .line 97
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    .line 98
    return-void
.end method


# virtual methods
.method public getBucketCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "prefixIsNumeric":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 116
    .local v2, "length":I
    const/4 v3, 0x0

    .line 117
    .local v3, "offset":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 118
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 121
    .local v1, "codePoint":I
    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    const/4 v4, 0x1

    .line 132
    .end local v1    # "codePoint":I
    :cond_0
    if-eqz v4, :cond_4

    .line 133
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    .line 143
    :cond_1
    :goto_1
    return v0

    .line 124
    .restart local v1    # "codePoint":I
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_3

    const/16 v5, 0x28

    if-eq v1, v5, :cond_3

    const/16 v5, 0x29

    if-eq v1, v5, :cond_3

    const/16 v5, 0x2e

    if-eq v1, v5, :cond_3

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_3

    const/16 v5, 0x23

    if-ne v1, v5, :cond_0

    .line 130
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 131
    goto :goto_0

    .line 136
    .end local v1    # "codePoint":I
    :cond_4
    iget-object v5, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Llibcore/icu/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v5, p1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "bucket":I
    if-gez v0, :cond_5

    .line 138
    const/4 v0, -0x1

    goto :goto_1

    .line 140
    :cond_5
    iget v5, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-lt v0, v5, :cond_1

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "bucketIndex"    # I

    .prologue
    .line 160
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 161
    :cond_0
    const-string v0, ""

    .line 167
    :goto_0
    return-object v0

    .line 162
    :cond_1
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-ne p1, v0, :cond_2

    .line 163
    const-string v0, "#"

    goto :goto_0

    .line 164
    :cond_2
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-le p1, v0, :cond_3

    .line 165
    add-int/lit8 p1, p1, -0x1

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Llibcore/icu/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Llibcore/icu/AlphabeticIndex$ImmutableIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    .line 177
    .local v0, "bucketCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v2, "labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-object v2
.end method

.method public getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method
