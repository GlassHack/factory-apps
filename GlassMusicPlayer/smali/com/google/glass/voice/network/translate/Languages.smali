.class public final Lcom/google/glass/voice/network/translate/Languages;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

.field private static final DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 14
    const/16 v0, 0x42

    new-array v0, v0, [[Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "af"

    aput-object v3, v2, v1

    const-string v3, "Afrikaans"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "sq"

    aput-object v3, v2, v1

    const-string v3, "Albanian"

    aput-object v3, v2, v7

    aput-object v2, v0, v7

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "ar"

    aput-object v3, v2, v1

    const-string v3, "Arabic"

    aput-object v3, v2, v7

    aput-object v2, v0, v5

    const/4 v2, 0x3

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "hy"

    aput-object v4, v3, v1

    const-string v4, "Armenian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "az"

    aput-object v4, v3, v1

    const-string v4, "Azerbaijani"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "eu"

    aput-object v4, v3, v1

    const-string v4, "Basque"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "be"

    aput-object v4, v3, v1

    const-string v4, "Belarusian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "bn"

    aput-object v4, v3, v1

    const-string v4, "Bengali"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "bg"

    aput-object v4, v3, v1

    const-string v4, "Bulgarian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ca"

    aput-object v4, v3, v1

    const-string v4, "Catalan"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "zh-CN"

    aput-object v4, v3, v1

    const-string v4, "Chinese (Simplified)"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0xb

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "zh-TW"

    aput-object v4, v3, v1

    const-string v4, "Chinese (Traditional)"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0xc

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "hr"

    aput-object v4, v3, v1

    const-string v4, "Croatian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0xd

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "cs"

    aput-object v4, v3, v1

    const-string v4, "Czech"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "da"

    aput-object v4, v3, v1

    const-string v4, "Danish"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "nl"

    aput-object v4, v3, v1

    const-string v4, "Dutch"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "en"

    aput-object v4, v3, v1

    const-string v4, "English"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "eo"

    aput-object v4, v3, v1

    const-string v4, "Esperanto"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x12

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "et"

    aput-object v4, v3, v1

    const-string v4, "Estonian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x13

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "tl"

    aput-object v4, v3, v1

    const-string v4, "Filipino"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x14

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "fi"

    aput-object v4, v3, v1

    const-string v4, "Finnish"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x15

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "fr"

    aput-object v4, v3, v1

    const-string v4, "French"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x16

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "gl"

    aput-object v4, v3, v1

    const-string v4, "Galician"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x17

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ka"

    aput-object v4, v3, v1

    const-string v4, "Georgian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x18

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "de"

    aput-object v4, v3, v1

    const-string v4, "German"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x19

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "el"

    aput-object v4, v3, v1

    const-string v4, "Greek"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "gu"

    aput-object v4, v3, v1

    const-string v4, "Gujarati"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ht"

    aput-object v4, v3, v1

    const-string v4, "Haitian Creole"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "iw"

    aput-object v4, v3, v1

    const-string v4, "Hebrew"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "hi"

    aput-object v4, v3, v1

    const-string v4, "Hindi"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "hu"

    aput-object v4, v3, v1

    const-string v4, "Hungarian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "is"

    aput-object v4, v3, v1

    const-string v4, "Icelandic"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x20

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v3, v1

    const-string v4, "Indonesian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x21

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ga"

    aput-object v4, v3, v1

    const-string v4, "Irish"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x22

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "it"

    aput-object v4, v3, v1

    const-string v4, "Italian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x23

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ja"

    aput-object v4, v3, v1

    const-string v4, "Japanese"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x24

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "kn"

    aput-object v4, v3, v1

    const-string v4, "Kannada"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x25

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ko"

    aput-object v4, v3, v1

    const-string v4, "Korean"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x26

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "lo"

    aput-object v4, v3, v1

    const-string v4, "Lao"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x27

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "la"

    aput-object v4, v3, v1

    const-string v4, "Latin"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x28

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "lv"

    aput-object v4, v3, v1

    const-string v4, "Latvian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x29

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "lt"

    aput-object v4, v3, v1

    const-string v4, "Lithuanian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "mk"

    aput-object v4, v3, v1

    const-string v4, "Macedonian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ms"

    aput-object v4, v3, v1

    const-string v4, "Malay"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "mt"

    aput-object v4, v3, v1

    const-string v4, "Maltese"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "no"

    aput-object v4, v3, v1

    const-string v4, "Norwegian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "fa"

    aput-object v4, v3, v1

    const-string v4, "Persian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "pl"

    aput-object v4, v3, v1

    const-string v4, "Polish"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x30

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "pt"

    aput-object v4, v3, v1

    const-string v4, "Portuguese"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x31

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ro"

    aput-object v4, v3, v1

    const-string v4, "Romanian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x32

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ru"

    aput-object v4, v3, v1

    const-string v4, "Russian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x33

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "sr"

    aput-object v4, v3, v1

    const-string v4, "Serbian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x34

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "sk"

    aput-object v4, v3, v1

    const-string v4, "Slovak"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x35

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "sl"

    aput-object v4, v3, v1

    const-string v4, "Slovenian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x36

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "es"

    aput-object v4, v3, v1

    const-string v4, "Spanish"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x37

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "sw"

    aput-object v4, v3, v1

    const-string v4, "Swahili"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x38

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "sv"

    aput-object v4, v3, v1

    const-string v4, "Swedish"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x39

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ta"

    aput-object v4, v3, v1

    const-string v4, "Tamil"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x3a

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "te"

    aput-object v4, v3, v1

    const-string v4, "Telugu"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x3b

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "th"

    aput-object v4, v3, v1

    const-string v4, "Thai"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x3c

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "tr"

    aput-object v4, v3, v1

    const-string v4, "Turkish"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x3d

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "uk"

    aput-object v4, v3, v1

    const-string v4, "Ukrainian"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x3e

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ur"

    aput-object v4, v3, v1

    const-string v4, "Urdu"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x3f

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "vi"

    aput-object v4, v3, v1

    const-string v4, "Vietnamese"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x40

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "cy"

    aput-object v4, v3, v1

    const-string v4, "Welsh"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/16 v2, 0x41

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "yi"

    aput-object v4, v3, v1

    const-string v4, "Yiddish"

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/glass/voice/network/translate/Languages;->DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    .line 93
    sget-object v2, Lcom/google/glass/voice/network/translate/Languages;->DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 94
    sget-object v5, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    aget-object v6, v4, v7

    aget-object v4, v4, v1

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v0, v0, 0x1

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

    .prologue
    .line 102
    sget-object v0, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
