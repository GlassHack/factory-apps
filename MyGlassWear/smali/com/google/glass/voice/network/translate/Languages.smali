.class public final Lcom/google/glass/voice/network/translate/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# static fields
.field private static final DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

.field private static final DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 14
    const/16 v1, 0x42

    new-array v1, v1, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "af"

    aput-object v4, v3, v2

    const-string v4, "Afrikaans"

    aput-object v4, v3, v8

    aput-object v3, v1, v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sq"

    aput-object v4, v3, v2

    const-string v4, "Albanian"

    aput-object v4, v3, v8

    aput-object v3, v1, v8

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "ar"

    aput-object v4, v3, v2

    const-string v4, "Arabic"

    aput-object v4, v3, v8

    aput-object v3, v1, v6

    const/4 v3, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "hy"

    aput-object v5, v4, v2

    const-string v5, "Armenian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/4 v3, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "az"

    aput-object v5, v4, v2

    const-string v5, "Azerbaijani"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/4 v3, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "eu"

    aput-object v5, v4, v2

    const-string v5, "Basque"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/4 v3, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "be"

    aput-object v5, v4, v2

    const-string v5, "Belarusian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/4 v3, 0x7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "bn"

    aput-object v5, v4, v2

    const-string v5, "Bengali"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "bg"

    aput-object v5, v4, v2

    const-string v5, "Bulgarian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ca"

    aput-object v5, v4, v2

    const-string v5, "Catalan"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0xa

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-CN"

    aput-object v5, v4, v2

    const-string v5, "Chinese (Simplified)"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0xb

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-TW"

    aput-object v5, v4, v2

    const-string v5, "Chinese (Traditional)"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0xc

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "hr"

    aput-object v5, v4, v2

    const-string v5, "Croatian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0xd

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "cs"

    aput-object v5, v4, v2

    const-string v5, "Czech"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0xe

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "da"

    aput-object v5, v4, v2

    const-string v5, "Danish"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0xf

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "nl"

    aput-object v5, v4, v2

    const-string v5, "Dutch"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x10

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "en"

    aput-object v5, v4, v2

    const-string v5, "English"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x11

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "eo"

    aput-object v5, v4, v2

    const-string v5, "Esperanto"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x12

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "et"

    aput-object v5, v4, v2

    const-string v5, "Estonian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x13

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "tl"

    aput-object v5, v4, v2

    const-string v5, "Filipino"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x14

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "fi"

    aput-object v5, v4, v2

    const-string v5, "Finnish"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x15

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "fr"

    aput-object v5, v4, v2

    const-string v5, "French"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x16

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "gl"

    aput-object v5, v4, v2

    const-string v5, "Galician"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x17

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ka"

    aput-object v5, v4, v2

    const-string v5, "Georgian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x18

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "de"

    aput-object v5, v4, v2

    const-string v5, "German"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x19

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "el"

    aput-object v5, v4, v2

    const-string v5, "Greek"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "gu"

    aput-object v5, v4, v2

    const-string v5, "Gujarati"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ht"

    aput-object v5, v4, v2

    const-string v5, "Haitian Creole"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "iw"

    aput-object v5, v4, v2

    const-string v5, "Hebrew"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "hi"

    aput-object v5, v4, v2

    const-string v5, "Hindi"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "hu"

    aput-object v5, v4, v2

    const-string v5, "Hungarian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "is"

    aput-object v5, v4, v2

    const-string v5, "Icelandic"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x20

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "id"

    aput-object v5, v4, v2

    const-string v5, "Indonesian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x21

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ga"

    aput-object v5, v4, v2

    const-string v5, "Irish"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x22

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "it"

    aput-object v5, v4, v2

    const-string v5, "Italian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x23

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ja"

    aput-object v5, v4, v2

    const-string v5, "Japanese"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x24

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "kn"

    aput-object v5, v4, v2

    const-string v5, "Kannada"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x25

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ko"

    aput-object v5, v4, v2

    const-string v5, "Korean"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x26

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "lo"

    aput-object v5, v4, v2

    const-string v5, "Lao"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x27

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "la"

    aput-object v5, v4, v2

    const-string v5, "Latin"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x28

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "lv"

    aput-object v5, v4, v2

    const-string v5, "Latvian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x29

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "lt"

    aput-object v5, v4, v2

    const-string v5, "Lithuanian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "mk"

    aput-object v5, v4, v2

    const-string v5, "Macedonian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ms"

    aput-object v5, v4, v2

    const-string v5, "Malay"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "mt"

    aput-object v5, v4, v2

    const-string v5, "Maltese"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "no"

    aput-object v5, v4, v2

    const-string v5, "Norwegian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "fa"

    aput-object v5, v4, v2

    const-string v5, "Persian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "pl"

    aput-object v5, v4, v2

    const-string v5, "Polish"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x30

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "pt"

    aput-object v5, v4, v2

    const-string v5, "Portuguese"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x31

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ro"

    aput-object v5, v4, v2

    const-string v5, "Romanian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x32

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ru"

    aput-object v5, v4, v2

    const-string v5, "Russian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x33

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "sr"

    aput-object v5, v4, v2

    const-string v5, "Serbian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x34

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "sk"

    aput-object v5, v4, v2

    const-string v5, "Slovak"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x35

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "sl"

    aput-object v5, v4, v2

    const-string v5, "Slovenian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x36

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "es"

    aput-object v5, v4, v2

    const-string v5, "Spanish"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x37

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "sw"

    aput-object v5, v4, v2

    const-string v5, "Swahili"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x38

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "sv"

    aput-object v5, v4, v2

    const-string v5, "Swedish"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x39

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ta"

    aput-object v5, v4, v2

    const-string v5, "Tamil"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x3a

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "te"

    aput-object v5, v4, v2

    const-string v5, "Telugu"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x3b

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "th"

    aput-object v5, v4, v2

    const-string v5, "Thai"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x3c

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "tr"

    aput-object v5, v4, v2

    const-string v5, "Turkish"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x3d

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "uk"

    aput-object v5, v4, v2

    const-string v5, "Ukrainian"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x3e

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ur"

    aput-object v5, v4, v2

    const-string v5, "Urdu"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x3f

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "vi"

    aput-object v5, v4, v2

    const-string v5, "Vietnamese"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x40

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "cy"

    aput-object v5, v4, v2

    const-string v5, "Welsh"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    const/16 v3, 0x41

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "yi"

    aput-object v5, v4, v2

    const-string v5, "Yiddish"

    aput-object v5, v4, v8

    aput-object v4, v1, v3

    sput-object v1, Lcom/google/glass/voice/network/translate/Languages;->DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

    .line 89
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    .line 93
    sget-object v3, Lcom/google/glass/voice/network/translate/Languages;->DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    .local v0, "l":[Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 94
    sget-object v5, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    aget-object v6, v0, v8

    aget-object v7, v0, v2

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "longName"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-object v0, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
