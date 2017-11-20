.class public Lcom/google/glass/util/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCALE_TO_REGION_MAP:Ljava/util/Map;

.field private static final REGION_US:Ljava/lang/String; = "US"

.field private static final SHORT_NUMBER_LENGTH:I = 0x3

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static phoneNumberUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/PhoneNumberUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    invoke-static {}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a()Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/glass/util/PhoneNumberUtils;->LOCALE_TO_REGION_MAP:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/google/glass/util/PhoneNumberUtils;->LOCALE_TO_REGION_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static formatPhoneNumberForDial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 81
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object p0

    .line 85
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 86
    invoke-static {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :cond_2
    invoke-static {}, Lcom/google/glass/util/PhoneNumberUtils;->getLocaleBasedRegion()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {p1, p2, v0}, Lcom/google/glass/util/PhoneNumberUtils;->getCurrentRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {p1, p2, v0}, Lcom/google/glass/util/PhoneNumberUtils;->getHomeRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    sget-object v2, Lcom/google/glass/util/PhoneNumberUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Phone regions [current: %s home: %s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {p0, v0}, Lcom/google/glass/util/PhoneNumberUtils;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    sget-object v2, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2, v0, v1, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 61
    invoke-static {}, Lcom/google/glass/util/PhoneNumberUtils;->getLocaleBasedRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/util/PhoneNumberUtils;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    sget-object v1, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    .line 65
    :cond_0
    return-object p0
.end method

.method public static formatPhoneNumbersForDisplay(Ljava/util/Collection;)Ljava/util/List;
    .locals 3

    .prologue
    .line 51
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 52
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-static {v0}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method

.method private static getCurrentRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 133
    if-eqz p0, :cond_0

    .line 138
    :goto_0
    return-object p0

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    move-object p0, p1

    .line 136
    goto :goto_0

    :cond_1
    move-object p0, p2

    .line 138
    goto :goto_0
.end method

.method public static getDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/PhoneNumberUtils$Destination;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 114
    invoke-static {}, Lcom/google/glass/util/PhoneNumberUtils;->getLocaleBasedRegion()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {p1, p2, v0}, Lcom/google/glass/util/PhoneNumberUtils;->getCurrentRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {p1, p2, v0}, Lcom/google/glass/util/PhoneNumberUtils;->getHomeRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    sget-object v2, Lcom/google/glass/util/PhoneNumberUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Phone regions [current: %s home: %s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {p0, v0}, Lcom/google/glass/util/PhoneNumberUtils;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 120
    if-nez v1, :cond_0

    .line 121
    sget-object v0, Lcom/google/glass/util/PhoneNumberUtils$Destination;->UNKNOWN:Lcom/google/glass/util/PhoneNumberUtils$Destination;

    .line 127
    :goto_0
    return-object v0

    .line 124
    :cond_0
    const/4 v2, 0x3

    sget-object v3, Lcom/google/glass/util/PhoneNumberUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v3}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v2, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->d(Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/glass/util/PhoneNumberUtils$Destination;->NATIONAL:Lcom/google/glass/util/PhoneNumberUtils$Destination;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/glass/util/PhoneNumberUtils$Destination;->INTERNATIONAL:Lcom/google/glass/util/PhoneNumberUtils$Destination;

    goto :goto_0
.end method

.method private static getHomeRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 149
    :goto_0
    return-object p1

    .line 146
    :cond_0
    if-eqz p0, :cond_1

    move-object p1, p0

    .line 147
    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 149
    goto :goto_0
.end method

.method static getLocaleBasedRegion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    sget-object v0, Lcom/google/glass/util/PhoneNumberUtils;->LOCALE_TO_REGION_MAP:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    sget-object v0, Lcom/google/glass/util/PhoneNumberUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to find country code for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const-string v0, "US"

    .line 169
    :cond_0
    return-object v0
.end method

.method protected static parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    :goto_0
    return-object v0

    .line 185
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    sget-object v2, Lcom/google/glass/util/PhoneNumberUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to parse phone number."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :catch_1
    move-exception v1

    .line 194
    sget-object v2, Lcom/google/glass/util/PhoneNumberUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to parse phone number."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
