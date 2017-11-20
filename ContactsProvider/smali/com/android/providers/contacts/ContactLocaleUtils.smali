.class public Lcom/android/providers/contacts/ContactLocaleUtils;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;,
        Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;,
        Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field public static final LOCALE_ARABIC:Ljava/util/Locale;

.field public static final LOCALE_GREEK:Ljava/util/Locale;

.field public static final LOCALE_HEBREW:Ljava/util/Locale;

.field public static final LOCALE_THAI:Ljava/util/Locale;

.field public static final LOCALE_UKRAINIAN:Ljava/util/Locale;

.field private static sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;


# instance fields
.field private final mLanguage:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    .line 50
    new-instance v0, Ljava/util/Locale;

    const-string v1, "el"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_GREEK:Ljava/util/Locale;

    .line 51
    new-instance v0, Ljava/util/Locale;

    const-string v1, "he"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    .line 53
    new-instance v0, Ljava/util/Locale;

    const-string v1, "uk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    .line 54
    new-instance v0, Ljava/util/Locale;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->LOCALE_THAI:Ljava/util/Locale;

    .line 393
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 394
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 395
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    if-nez p1, :cond_0

    .line 405
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    sget-object v1, Lcom/android/providers/contacts/ContactLocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 417
    :goto_1
    const-string v0, "ContactLocale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddressBook Labels ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getLabels()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$SimplifiedChineseContactUtils;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    goto :goto_1

    .line 415
    :cond_2
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/android/providers/contacts/ContactLocaleUtils;
    .locals 3

    .prologue
    .line 426
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactLocaleUtils;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    .line 429
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 433
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-virtual {v0, p0}, Lcom/android/providers/contacts/ContactLocaleUtils;->isLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactLocaleUtils;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->sSingleton:Lcom/android/providers/contacts/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_1
    monitor-exit v1

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBucketIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "bucketIndex"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .locals 1
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
    .line 459
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getLabels()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 2
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
    .line 475
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-static {p1}, Lcom/android/providers/contacts/ContactLocaleUtils$JapaneseContactUtils;->getRomajiNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mUtils:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public isLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
