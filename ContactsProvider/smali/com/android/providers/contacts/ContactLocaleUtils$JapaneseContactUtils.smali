.class Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;
.super Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JapaneseContactUtils"
.end annotation


# static fields
.field private static final CJ_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitializedTransliterator:Z

.field private static mJapaneseTransliterator:Llibcore/icu/Transliterator;


# instance fields
.field private final mMiscBucketIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 215
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->CJ_BLOCKS:Ljava/util/Set;

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Ljava/util/Locale;)V

    .line 205
    const-string v0, "\u65e5"

    invoke-super {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    .line 206
    return-void
.end method

.method private static getJapaneseTransliterator()Llibcore/icu/Transliterator;
    .locals 6

    .prologue
    .line 295
    const-class v4, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;

    monitor-enter v4

    .line 296
    :try_start_0
    sget-boolean v3, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mInitializedTransliterator:Z

    if-nez v3, :cond_0

    .line 297
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mInitializedTransliterator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    const/4 v1, 0x0

    .line 300
    .local v1, "t":Llibcore/icu/Transliterator;
    :try_start_1
    new-instance v2, Llibcore/icu/Transliterator;

    const-string v3, "Hiragana-Latin; Katakana-Latin; Latin-Ascii"

    invoke-direct {v2, v3}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "t":Llibcore/icu/Transliterator;
    .local v2, "t":Llibcore/icu/Transliterator;
    move-object v1, v2

    .line 306
    .end local v2    # "t":Llibcore/icu/Transliterator;
    .restart local v1    # "t":Llibcore/icu/Transliterator;
    :goto_0
    :try_start_2
    sput-object v1, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mJapaneseTransliterator:Llibcore/icu/Transliterator;

    .line 308
    :cond_0
    sget-object v3, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mJapaneseTransliterator:Llibcore/icu/Transliterator;

    monitor-exit v4

    return-object v3

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "ContactLocale"

    const-string v5, "Hiragana/Katakana-Latin transliterator data is missing"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static getRomajiNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 313
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->getJapaneseTransliterator()Llibcore/icu/Transliterator;

    move-result-object v2

    .line 314
    .local v2, "t":Llibcore/icu/Transliterator;
    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-object v3

    .line 317
    :cond_1
    invoke-virtual {v2, p0}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "romajiName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 322
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 323
    .local v0, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    goto :goto_0
.end method

.method private static isChineseOrJapanese(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 239
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->CJ_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBucketCount()I
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, "bucketIndex":I
    iget v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->isChineseOrJapanese(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-le v0, v1, :cond_2

    .line 252
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 254
    .end local v0    # "bucketIndex":I
    :cond_2
    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "bucketIndex"    # I

    .prologue
    .line 274
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-ne p1, v0, :cond_0

    .line 275
    const-string v0, "\u4ed6"

    .line 279
    :goto_0
    return-object v0

    .line 276
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-le p1, v0, :cond_1

    .line 277
    add-int/lit8 p1, p1, -0x1

    .line 279
    :cond_1
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 285
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 286
    invoke-static {p1}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->getRomajiNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
