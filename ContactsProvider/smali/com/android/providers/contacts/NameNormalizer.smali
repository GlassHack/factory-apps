.class public Lcom/android/providers/contacts/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

.field private static sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

.field private static sCollatorLocale:Ljava/util/Locale;

.field private static final sCollatorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    return-void
.end method

.method public static compareComplexity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "clean1":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "clean2":Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->getComplexityCollator()Ljava/text/RuleBasedCollator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, "diff":I
    if-eqz v2, :cond_0

    move v3, v2

    .line 100
    :goto_0
    return v3

    .line 96
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    neg-int v2, v3

    .line 97
    if-eqz v2, :cond_1

    move v3, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0
.end method

.method private static ensureCollators()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 44
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    .line 49
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    check-cast v1, Ljava/text/RuleBasedCollator;

    sput-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    .line 50
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 51
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    .line 53
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    check-cast v1, Ljava/text/RuleBasedCollator;

    sput-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    .line 54
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    goto :goto_0
.end method

.method static getComplexityCollator()Ljava/text/RuleBasedCollator;
    .locals 2

    .prologue
    .line 67
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->ensureCollators()V

    .line 69
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getCompressingCollator()Ljava/text/RuleBasedCollator;
    .locals 2

    .prologue
    .line 59
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->ensureCollators()V

    .line 61
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 108
    .local v4, "letters":[C
    const/4 v2, 0x0

    .line 109
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 110
    aget-char v0, v4, v1

    .line 111
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    aput-char v0, v4, v2

    move v2, v3

    .line 109
    .end local v3    # "length":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "c":C
    :cond_1
    array-length v5, v4

    if-eq v2, v5, :cond_2

    .line 117
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 120
    :cond_2
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Lcom/android/providers/contacts/NameNormalizer;->getCompressingCollator()Ljava/text/RuleBasedCollator;

    move-result-object v1

    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 79
    .local v0, "key":Ljava/text/CollationKey;
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/providers/contacts/util/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
