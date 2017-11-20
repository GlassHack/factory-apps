.class Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
.super Ljava/lang/Object;
.source "DefaultCallLogInsertionHelper.java"

# interfaces
.implements Lcom/android/providers/contacts/CallLogInsertionHelper;


# static fields
.field private static final LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;


# instance fields
.field private final mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

.field private final mLocale:Ljava/util/Locale;

.field private mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field private mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-3"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    .line 61
    return-void
.end method

.method private getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v1, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComputedValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "countryIso":Ljava/lang/String;
    const-string v2, "countryiso"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "geocoded_location"

    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "number":Ljava/lang/String;
    sget-object v2, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "presentation"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    const-string v2, "number"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 108
    .local v0, "structuredPhoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
