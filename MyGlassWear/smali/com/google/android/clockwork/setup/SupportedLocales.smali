.class public Lcom/google/android/clockwork/setup/SupportedLocales;
.super Ljava/lang/Object;
.source "SupportedLocales.java"


# static fields
.field public static final COUNT:I

.field public static final LOCALES:[Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 6
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Locale;

    const-string v3, "de"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "US"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "GB"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    const-string v4, "419"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fr"

    const-string v4, "CA"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/util/Locale;

    const-string v3, "it"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ja"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ko"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, "BR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/clockwork/setup/SupportedLocales;->LOCALES:[Ljava/util/Locale;

    .line 21
    sget-object v0, Lcom/google/android/clockwork/setup/SupportedLocales;->LOCALES:[Ljava/util/Locale;

    array-length v0, v0

    sput v0, Lcom/google/android/clockwork/setup/SupportedLocales;->COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
