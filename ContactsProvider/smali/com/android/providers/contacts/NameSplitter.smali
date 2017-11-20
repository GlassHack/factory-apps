.class public Lcom/android/providers/contacts/NameSplitter;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/NameSplitter$NameTokenizer;,
        Lcom/android/providers/contacts/NameSplitter$Name;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;


# instance fields
.field private final mConjuctions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mLastNamePrefixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mMaxSuffixLength:I

.field private final mPrefixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuffixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 51
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    .line 54
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 68
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\uac15\uc804"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\ub0a8\uad81"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\ub3c5\uace0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\ub3d9\ubc29"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\ub9dd\uc808"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\uc0ac\uacf5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\uc11c\ubb38"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\uc120\uc6b0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\uc18c\ubd09"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uc5b4\uae08"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\uc7a5\uace1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uc81c\uac08"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud669\ubcf4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4
    .param p1, "commonPrefixes"    # Ljava/lang/String;
    .param p2, "commonLastNamePrefixes"    # Ljava/lang/String;
    .param p3, "commonSuffixes"    # Ljava/lang/String;
    .param p4, "commonConjunctions"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/util/Locale;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-static {p1}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    .line 287
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    .line 288
    invoke-static {p3}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    .line 289
    invoke-static {p4}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Ljava/util/HashSet;

    .line 290
    if-eqz p5, :cond_1

    .end local p5    # "locale":Ljava/util/Locale;
    :goto_0
    iput-object p5, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    .line 291
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "maxLength":I
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 295
    .local v2, "suffix":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 290
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "maxLength":I
    .end local v2    # "suffix":Ljava/lang/String;
    .restart local p5    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    goto :goto_0

    .line 300
    .end local p5    # "locale":Ljava/util/Locale;
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "maxLength":I
    :cond_2
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    .line 301
    return-void
.end method

.method private static convertToSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .param p0, "strings"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 309
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 310
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "split":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 312
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    .end local v2    # "split":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 1015
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1016
    .local v1, "length":I
    :goto_0
    if-ge p2, v1, :cond_2

    .line 1017
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1018
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1019
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 1020
    .local v2, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1021
    const/4 v3, 0x4

    .line 1030
    .end local v0    # "codePoint":I
    .end local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v3

    .line 1023
    .restart local v0    # "codePoint":I
    .restart local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1024
    const/4 v3, 0x5

    goto :goto_1

    .line 1027
    .end local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 1028
    goto :goto_0

    .line 1030
    .end local v0    # "codePoint":I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method private guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 5
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 926
    iget v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    if-eqz v2, :cond_0

    .line 976
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 933
    .local v0, "bestGuess":I
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    .line 935
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 939
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 940
    .local v1, "guess":I
    if-eqz v1, :cond_3

    .line 941
    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    .line 942
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 945
    :cond_2
    move v0, v1

    .line 948
    :cond_3
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 949
    if-eqz v1, :cond_5

    .line 950
    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_4

    .line 951
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 954
    :cond_4
    move v0, v1

    .line 957
    :cond_5
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 958
    if-eqz v1, :cond_7

    .line 959
    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_6

    .line 960
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 963
    :cond_6
    move v0, v1

    .line 966
    :cond_7
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 967
    if-eqz v1, :cond_9

    .line 968
    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_8

    .line 969
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 972
    :cond_8
    move v0, v1

    .line 975
    :cond_9
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0
.end method

.method private guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 4
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;

    .prologue
    const/4 v3, 0x2

    .line 1034
    iget v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    if-eqz v2, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 1039
    .local v0, "bestGuess":I
    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    .line 1040
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1044
    :cond_2
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 1045
    .local v1, "guess":I
    if-eqz v1, :cond_4

    .line 1046
    if-eq v1, v3, :cond_3

    .line 1047
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1050
    :cond_3
    move v0, v1

    .line 1053
    :cond_4
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 1054
    if-eqz v1, :cond_0

    .line 1055
    if-eq v1, v3, :cond_5

    .line 1056
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1059
    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "block"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 1100
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFamilyNamePrefix(Ljava/lang/String;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "normalized":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 1118
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 1112
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 1092
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "part1"    # Ljava/lang/String;
    .param p3, "part2"    # Ljava/lang/String;
    .param p4, "part3"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .param p6, "useSpace"    # Z
    .param p7, "useCommaAfterPart1"    # Z
    .param p8, "useCommaAfterPart3"    # Z

    .prologue
    .line 561
    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 562
    :goto_0
    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 563
    :goto_1
    if-nez p3, :cond_7

    const/4 p3, 0x0

    .line 564
    :goto_2
    if-nez p4, :cond_8

    const/4 p4, 0x0

    .line 565
    :goto_3
    if-nez p5, :cond_9

    const/4 p5, 0x0

    .line 567
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v3, 0x1

    .line 568
    .local v3, "hasPrefix":Z
    :goto_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v0, 0x1

    .line 569
    .local v0, "hasPart1":Z
    :goto_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v1, 0x1

    .line 570
    .local v1, "hasPart2":Z
    :goto_7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v2, 0x1

    .line 571
    .local v2, "hasPart3":Z
    :goto_8
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v4, 0x1

    .line 573
    .local v4, "hasSuffix":Z
    :goto_9
    const/4 v5, 0x1

    .line 574
    .local v5, "isSingleWord":Z
    const/4 v7, 0x0

    .line 576
    .local v7, "singleWord":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 577
    move-object v7, p1

    .line 580
    :cond_0
    if-eqz v0, :cond_1

    .line 581
    if-eqz v7, :cond_f

    .line 582
    const/4 v5, 0x0

    .line 588
    :cond_1
    :goto_a
    if-eqz v1, :cond_2

    .line 589
    if-eqz v7, :cond_10

    .line 590
    const/4 v5, 0x0

    .line 596
    :cond_2
    :goto_b
    if-eqz v2, :cond_3

    .line 597
    if-eqz v7, :cond_11

    .line 598
    const/4 v5, 0x0

    .line 604
    :cond_3
    :goto_c
    if-eqz v4, :cond_4

    .line 605
    if-eqz v7, :cond_12

    .line 606
    const/4 v5, 0x0

    .line 612
    :cond_4
    :goto_d
    if-eqz v5, :cond_13

    .line 662
    .end local v7    # "singleWord":Ljava/lang/String;
    :goto_e
    return-object v7

    .line 561
    .end local v0    # "hasPart1":Z
    .end local v1    # "hasPart2":Z
    .end local v2    # "hasPart3":Z
    .end local v3    # "hasPrefix":Z
    .end local v4    # "hasSuffix":Z
    .end local v5    # "isSingleWord":Z
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 562
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 563
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 564
    :cond_8
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 565
    :cond_9
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    goto :goto_4

    .line 567
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 568
    .restart local v3    # "hasPrefix":Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 569
    .restart local v0    # "hasPart1":Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 570
    .restart local v1    # "hasPart2":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    .line 571
    .restart local v2    # "hasPart3":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_9

    .line 584
    .restart local v4    # "hasSuffix":Z
    .restart local v5    # "isSingleWord":Z
    .restart local v7    # "singleWord":Ljava/lang/String;
    :cond_f
    move-object v7, p2

    goto :goto_a

    .line 592
    :cond_10
    move-object v7, p3

    goto :goto_b

    .line 600
    :cond_11
    move-object v7, p4

    goto :goto_c

    .line 608
    :cond_12
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    .line 616
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_14

    .line 619
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_14
    if-eqz v0, :cond_16

    .line 623
    if-eqz v3, :cond_15

    .line 624
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    :cond_15
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_16
    if-eqz v1, :cond_1a

    .line 630
    if-nez v3, :cond_17

    if-eqz v0, :cond_19

    .line 631
    :cond_17
    if-eqz p7, :cond_18

    .line 632
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    :cond_18
    if-eqz p6, :cond_19

    .line 635
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    :cond_19
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :cond_1a
    if-eqz v2, :cond_1d

    .line 642
    if-nez v3, :cond_1b

    if-nez v0, :cond_1b

    if-eqz v1, :cond_1c

    .line 643
    :cond_1b
    if-eqz p6, :cond_1c

    .line 644
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    :cond_1c
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :cond_1d
    if-eqz v4, :cond_21

    .line 651
    if-nez v3, :cond_1e

    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    if-eqz v2, :cond_20

    .line 652
    :cond_1e
    if-eqz p8, :cond_1f

    .line 653
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    :cond_1f
    if-eqz p6, :cond_20

    .line 656
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    :cond_20
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_e
.end method

.method private normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2e

    .line 670
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 671
    .local v0, "length":I
    if-eqz v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 679
    .end local p1    # "suffix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 675
    .restart local p1    # "suffix":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "withDot":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 677
    goto :goto_0
.end method

.method private parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 4
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "tokens"    # Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    .prologue
    .line 866
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 885
    :goto_0
    return-void

    .line 870
    :cond_0
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 871
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 873
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    .local v0, "i":I
    :goto_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 875
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 876
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 878
    :cond_2
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 880
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 883
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 5
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "tokens"    # Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    .prologue
    const/16 v4, 0x2e

    .line 793
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 799
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 800
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 807
    :cond_2
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 810
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v0, v2, v3

    .line 811
    .local v0, "familyNamePrefix":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 815
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$012(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    goto/16 :goto_0

    .line 820
    .end local v0    # "familyNamePrefix":Ljava/lang/String;
    :cond_4
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 821
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    .line 824
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 825
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 826
    .local v1, "lastNamePrefix":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 830
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 831
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto/16 :goto_0
.end method

.method private parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "tokens"    # Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    .prologue
    .line 848
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 853
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Ljava/util/HashSet;

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    :cond_2
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 857
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 860
    :cond_3
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0
.end method

.method private parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "tokens"    # Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    .prologue
    .line 716
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v0, v1, v2

    .line 721
    .local v0, "firstToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    :cond_2
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 726
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0
.end method

.method private parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 6
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "tokens"    # Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    .prologue
    const/16 v5, 0x2e

    .line 734
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v3, v4

    .line 741
    .local v0, "lastToken":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 743
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    :cond_2
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 747
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 751
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_0

    .line 755
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "normalized":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 757
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 758
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 762
    :cond_4
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 769
    .local v2, "pos":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_0

    .line 771
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 772
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 773
    invoke-static {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$102(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    goto/16 :goto_0

    .line 777
    :cond_6
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 781
    add-int/lit8 v2, v2, -0x1

    .line 782
    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 785
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "fullName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 420
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 421
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "token":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 424
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_0
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 426
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 427
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_1
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 429
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 430
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 432
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 433
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 438
    .end local v1    # "token":Ljava/lang/String;
    :cond_3
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 439
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 440
    .local v0, "length":I
    if-ne v0, v5, :cond_5

    .line 441
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 442
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 454
    .end local v0    # "length":I
    :cond_4
    :goto_1
    return-void

    .line 443
    .restart local v0    # "length":I
    :cond_5
    if-ne v0, v8, :cond_6

    .line 444
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 445
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 446
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1

    .line 447
    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 448
    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 449
    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 450
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1
.end method

.method private splitJapaneseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "fullName"    # Ljava/lang/String;

    .prologue
    .line 463
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "token":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 467
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 468
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 469
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 470
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 472
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 475
    .end local v0    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private splitKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "fullName"    # Ljava/lang/String;

    .prologue
    .line 484
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 485
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 487
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 488
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "token":Ljava/lang/String;
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 490
    iput-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 491
    :cond_0
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 492
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 493
    iput-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 495
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 501
    .end local v4    # "token":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    .line 504
    .local v1, "familyNameLength":I
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 505
    .local v6, "twoLengthFamilyName":Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 506
    const/4 v1, 0x2

    .line 511
    .end local v6    # "twoLengthFamilyName":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 512
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v1, :cond_4

    .line 513
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 516
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "familyNameLength":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    return-void

    .line 504
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "familyNameLength":I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "twoLengthFamilyName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "fullName"    # Ljava/lang/String;

    .prologue
    .line 395
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "tokens":Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 400
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 404
    :cond_0
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 405
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 411
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 408
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 409
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdjustedFullNameStyle(I)I
    .locals 5
    .param p1, "nameStyle"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x4

    const/4 v2, 0x3

    .line 690
    if-nez p1, :cond_4

    .line 691
    sget-object v3, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move p1, v0

    .line 709
    .end local p1    # "nameStyle":I
    :cond_0
    :goto_0
    return p1

    .line 693
    .restart local p1    # "nameStyle":I
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p1, v1

    .line 694
    goto :goto_0

    .line 695
    :cond_2
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p1, v2

    .line 696
    goto :goto_0

    .line 698
    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    .line 700
    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 701
    sget-object v3, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move p1, v0

    .line 702
    goto :goto_0

    .line 703
    :cond_5
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move p1, v1

    .line 704
    goto :goto_0

    :cond_6
    move p1, v2

    .line 706
    goto :goto_0
.end method

.method public getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I
    .locals 4
    .param p1, "nameStyle"    # I
    .param p2, "phoneticNameStyle"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 906
    if-eqz p2, :cond_1

    .line 907
    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_1

    .line 908
    :cond_0
    if-ne p2, v0, :cond_2

    move p1, v0

    .line 918
    .end local p1    # "nameStyle":I
    :cond_1
    :goto_0
    return p1

    .line 910
    .restart local p1    # "nameStyle":I
    :cond_2
    if-ne p2, v1, :cond_3

    move p1, v1

    .line 911
    goto :goto_0

    .line 913
    :cond_3
    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    move p1, v2

    .line 914
    goto :goto_0
.end method

.method public guessFullNameStyle(Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 979
    if-nez p1, :cond_1

    .line 980
    const/4 v2, 0x0

    .line 1011
    :cond_0
    :goto_0
    return v2

    .line 983
    :cond_1
    const/4 v2, 0x0

    .line 984
    .local v2, "nameStyle":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 985
    .local v1, "length":I
    const/4 v3, 0x0

    .line 986
    .local v3, "offset":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 987
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 988
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 989
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 991
    .local v4, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 993
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 996
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5}, Lcom/android/providers/contacts/NameSplitter;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 999
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1000
    const/4 v2, 0x4

    goto :goto_0

    .line 1003
    :cond_3
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1004
    const/4 v2, 0x5

    goto :goto_0

    .line 1007
    :cond_4
    const/4 v2, 0x1

    .line 1009
    .end local v4    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 1010
    goto :goto_1
.end method

.method public guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 2
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 895
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 896
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    iget v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v0

    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 898
    return-void
.end method

.method public guessPhoneticNameStyle(Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1064
    if-nez p1, :cond_1

    .line 1065
    const/4 v2, 0x0

    .line 1088
    :cond_0
    :goto_0
    return v2

    .line 1068
    :cond_1
    const/4 v2, 0x0

    .line 1069
    .local v2, "nameStyle":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1070
    .local v1, "length":I
    const/4 v3, 0x0

    .line 1071
    .local v3, "offset":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 1072
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1073
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1074
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 1075
    .local v4, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1076
    const/4 v2, 0x4

    goto :goto_0

    .line 1078
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1079
    const/4 v2, 0x5

    goto :goto_0

    .line 1081
    :cond_3
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1082
    const/4 v2, 0x3

    goto :goto_0

    .line 1085
    .end local v4    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 1086
    goto :goto_1
.end method

.method public join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "givenNameFirst"    # Z
    .param p3, "includePrefix"    # Z

    .prologue
    .line 524
    if-eqz p3, :cond_0

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 525
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    packed-switch v0, :pswitch_data_0

    .line 537
    if-eqz p2, :cond_1

    .line 538
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 541
    :goto_1
    return-object v0

    .line 524
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 529
    .restart local v1    # "prefix":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 533
    :pswitch_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 541
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 552
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "fullName"    # Ljava/lang/String;

    .prologue
    .line 346
    if-nez p2, :cond_0

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "fullNameStyle":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 355
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Lcom/android/providers/contacts/NameSplitter$Name;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "fullNameStyle"    # I

    .prologue
    .line 363
    if-nez p2, :cond_0

    .line 385
    :goto_0
    return-void

    .line 367
    :cond_0
    iput p3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 369
    packed-switch p3, :pswitch_data_0

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitJapaneseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tokenize([Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "fullName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 322
    if-nez p2, :cond_1

    .line 338
    :cond_0
    return v0

    .line 326
    :cond_1
    new-instance v4, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v4, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 328
    .local v4, "tokenizer":Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v5

    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 332
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v6

    aget-object v2, v5, v6

    .line 333
    .local v2, "firstToken":Ljava/lang/String;
    const/4 v0, 0x0

    .line 334
    .local v0, "count":I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 335
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    aput-object v5, p1, v0

    .line 334
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0
.end method
