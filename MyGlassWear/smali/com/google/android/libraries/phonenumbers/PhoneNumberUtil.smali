.class public Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$3;,
        Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;,
        Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;,
        Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    }
.end annotation


# static fields
.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CAPTURING_EXTN_DIGITS:Ljava/lang/String; = "(\\p{Nd}{1,7})"

.field private static final CC_PATTERN:Ljava/util/regex/Pattern;

.field private static final COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX:Ljava/lang/String; = "3"

.field private static final DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field static final DEFAULT_METADATA_LOADER:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

.field private static final DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0x11

.field private static final META_DATA_FILE_PREFIX:Ljava/lang/String; = "/com/google/android/libraries/phonenumbers/data/PhoneNumberMetadataProto"

.field private static final MIN_LENGTH_FOR_NSN:I = 0x2

.field private static final MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NANPA_COUNTRY_CODE:I = 0x1

.field static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_SIGN:C = '+'

.field static final REGEX_FLAGS:I = 0x42

.field public static final REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final RFC3966_ISDN_SUBADDRESS:Ljava/lang/String; = ";isub="

.field private static final RFC3966_PHONE_CONTEXT:Ljava/lang/String; = ";phone-context="

.field private static final RFC3966_PREFIX:Ljava/lang/String; = "tel:"

.field private static final SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final STAR_SIGN:C = '*'

.field private static final UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final currentFilePrefix:Ljava/lang/String;

.field private final metadataLoader:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

.field private final regionToMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 60
    new-instance v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;

    invoke-direct {v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;-><init>()V

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->DEFAULT_METADATA_LOADER:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    .line 66
    const-class v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    .line 123
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v7, "mobileTokenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "9"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v10, 0x30

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x30

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v10, 0x31

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x31

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v10, 0x32

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/16 v10, 0x33

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v10, 0x37

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v10, 0x39

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/util/HashMap;

    const/16 v10, 0x28

    invoke-direct {v1, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    .local v1, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v10, 0x41

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/16 v10, 0x42

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v10, 0x43

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v10, 0x44

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v10, 0x45

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/16 v10, 0x46

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v10, 0x47

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v10, 0x48

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v10, 0x49

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v10, 0x4a

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v10, 0x4b

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v10, 0x4c

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v10, 0x4d

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v10, 0x4e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v10, 0x4f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v10, 0x50

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v10, 0x51

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v10, 0x52

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v10, 0x53

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v10, 0x54

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v10, 0x55

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v10, 0x56

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v10, 0x57

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v10, 0x58

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v10, 0x59

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v10, 0x5a

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 171
    new-instance v4, Ljava/util/HashMap;

    const/16 v10, 0x64

    invoke-direct {v4, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 172
    .local v4, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 173
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 174
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 176
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v5, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 178
    const/16 v10, 0x2b

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2b

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/16 v10, 0x2a

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 185
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    .end local v3    # "c":C
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 190
    const/16 v10, 0x2d

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const v10, 0xff0d

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v10, 0x2010

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v10, 0x2011

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v10, 0x2012

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/16 v10, 0x2013

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/16 v10, 0x2014

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const/16 v10, 0x2015

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/16 v10, 0x2212

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v10, 0x2f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const v10, 0xff0f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/16 v10, 0x3000

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v10, 0x2060

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/16 v10, 0x2e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const v10, 0xff0e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 215
    const-string v10, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 229
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "[, \\[\\]]"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, "[, \\[\\]]"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 233
    const-string v10, "[+\uff0b]+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 234
    const-string v10, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 235
    const-string v10, "(\\p{Nd})"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 244
    const-string v10, "[+\uff0b\\p{Nd}]"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 252
    const-string v10, "[\\\\/] *x"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 258
    const-string v10, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 262
    const-string v10, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 280
    const-string v10, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\p{Nd}"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 301
    const-string/jumbo v8, "x\uff58#\uff03~\uff5e"

    .line 305
    .local v8, "singleExtnSymbolsForMatching":Ljava/lang/String;
    const-string v10, ","

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, "singleExtnSymbolsForParsing":Ljava/lang/String;
    :goto_2
    invoke-static {v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 308
    invoke-static {v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 335
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x5

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "(?:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 340
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "(?:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 343
    const-string v10, "(\\D+)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 349
    const-string v10, "(\\$\\d)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 350
    const-string v10, "\\$NP"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 351
    const-string v10, "\\$FG"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 352
    const-string v10, "\\$CC"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 357
    const-string v10, "\\(?\\$1\\)?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 359
    const/4 v10, 0x0

    sput-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    return-void

    .line 229
    .end local v8    # "singleExtnSymbolsForMatching":Ljava/lang/String;
    .end local v9    # "singleExtnSymbolsForParsing":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 305
    .restart local v8    # "singleExtnSymbolsForMatching":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/MetadataLoader;Ljava/util/Map;)V
    .locals 7
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "metadataLoader"    # Lcom/google/android/libraries/phonenumbers/MetadataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/phonenumbers/MetadataLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance v3, Ljava/util/HashSet;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 549
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    .line 557
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    .line 563
    new-instance v3, Lcom/google/android/libraries/phonenumbers/RegexCache;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lcom/google/android/libraries/phonenumbers/RegexCache;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    .line 568
    new-instance v3, Ljava/util/HashSet;

    const/16 v4, 0x140

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 572
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 585
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    .line 586
    iput-object p2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->metadataLoader:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    .line 587
    iput-object p3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 588
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 592
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    const-string v3, "001"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 597
    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 603
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    const-string v4, "001"

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 604
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 607
    :cond_2
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 608
    return-void
.end method

.method private buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3006
    const-string v6, ";phone-context="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3007
    .local v2, "indexOfPhoneContext":I
    if-lez v2, :cond_4

    .line 3008
    const-string v6, ";phone-context="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v5, v2, v6

    .line 3011
    .local v5, "phoneContextStart":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_0

    .line 3015
    const/16 v6, 0x3b

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 3016
    .local v4, "phoneContextEnd":I
    if-lez v4, :cond_2

    .line 3017
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    .end local v4    # "phoneContextEnd":I
    :cond_0
    :goto_0
    const-string v6, "tel:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3028
    .local v3, "indexOfRfc3966Prefix":I
    if-ltz v3, :cond_3

    const-string v6, "tel:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v3, v6

    .line 3030
    .local v1, "indexOfNationalNumber":I
    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    .end local v1    # "indexOfNationalNumber":I
    .end local v3    # "indexOfRfc3966Prefix":I
    .end local v5    # "phoneContextStart":I
    :goto_2
    const-string v6, ";isub="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3040
    .local v0, "indexOfIsdn":I
    if-lez v0, :cond_1

    .line 3041
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p2, v0, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3047
    :cond_1
    return-void

    .line 3019
    .end local v0    # "indexOfIsdn":I
    .restart local v4    # "phoneContextEnd":I
    .restart local v5    # "phoneContextStart":I
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3028
    .end local v4    # "phoneContextEnd":I
    .restart local v3    # "indexOfRfc3966Prefix":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 3034
    .end local v3    # "indexOfRfc3966Prefix":I
    .end local v5    # "phoneContextStart":I
    :cond_4
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    .prologue
    .line 2744
    invoke-direct {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2746
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2748
    :cond_0
    const/4 v0, 0x0

    .line 2751
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static convertAlphaCharactersInNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 802
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createExtnPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "singleExtnSymbols"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\\p{Nd}{1,7})"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\p{Nd}"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]|int|anexo|\uff49\uff4e\uff54)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#?|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[- ]+("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{1,5})#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Lcom/google/android/libraries/phonenumbers/MetadataLoader;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    .locals 3
    .param p0, "metadataLoader"    # Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    .prologue
    .line 1034
    if-nez p0, :cond_0

    .line 1035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataLoader could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_0
    new-instance v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    const-string v1, "/com/google/android/libraries/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-static {}, Lcom/google/android/libraries/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;-><init>(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/MetadataLoader;Ljava/util/Map;)V

    return-object v0
.end method

.method static extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 686
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 687
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 688
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 690
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 691
    .local v2, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 693
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v6, "Stripped trailing characters: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 696
    :cond_0
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 697
    .local v1, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 702
    .end local v1    # "secondNumber":Ljava/util/regex/Matcher;
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    .end local p0    # "number":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p0

    .line 693
    .restart local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    .restart local p0    # "number":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    :cond_3
    const-string p0, ""

    goto :goto_1
.end method

.method private formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1760
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1771
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v2

    .line 1774
    .local v2, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 1778
    .local v0, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1779
    .local v1, "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v1, :cond_2

    .end local p1    # "number":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 1774
    .end local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v1    # "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1779
    .restart local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    .restart local v1    # "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    :cond_2
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1813
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 1814
    .local v6, "numberFormatRule":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1816
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 1817
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1821
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 1822
    .local v0, "carrierCodeFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1828
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1842
    .end local v0    # "carrierCodeFormattingRule":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_1

    .line 1844
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1845
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1846
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1849
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1851
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2

    .line 1831
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1832
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1835
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1836
    .local v1, "firstGroupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1838
    goto :goto_0

    .line 1839
    .end local v1    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nationalPrefixFormattingRule"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCountryCodeForValidRegion(Ljava/lang/String;)I
    .locals 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2224
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2225
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 2226
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid region code: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2228
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    return v1
.end method

.method public static getCountryMobileToken(I)Ljava/lang/String;
    .locals 2
    .param p0, "countryCallingCode"    # I

    .prologue
    .line 943
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 946
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    .locals 2

    .prologue
    .line 1014
    const-class v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 1015
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->DEFAULT_METADATA_LOADER:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/google/android/libraries/phonenumbers/MetadataLoader;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)V

    .line 1017
    :cond_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1014
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "countryCallingCode"    # I
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1248
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 1984
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1985
    .local v0, "generalNumberDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1987
    :cond_0
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2030
    :goto_0
    return-object v2

    .line 1990
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1991
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1993
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1994
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1996
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1997
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1999
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2000
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2002
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2003
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2005
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2006
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2008
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2009
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2011
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2012
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2015
    :cond_9
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    .line 2016
    .local v1, "isFixedLine":Z
    if-eqz v1, :cond_c

    .line 2017
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2018
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2019
    :cond_a
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2020
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2022
    :cond_b
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2026
    :cond_c
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2028
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2030
    :cond_d
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0
.end method

.method private getRegionCodeForNumberFromRegionList(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2156
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2157
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2160
    .local v3, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2161
    .local v1, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2162
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2170
    .end local v1    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v3    # "regionCode":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2166
    .restart local v1    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v3    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 2170
    .end local v1    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasFormattingPatternForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x0

    .line 1590
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1591
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1592
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1594
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v2, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return v5

    .line 1597
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1598
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1600
    .local v1, "formatRule":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private hasUnexpectedItalianLeadingZero(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 1
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1586
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isLeadingZeroPossible(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidCountryCallingCode(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNationalNumberSuffixOfTheOther(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "firstNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 3128
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3129
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3131
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isShorterThanPossibleNormalNumber(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z
    .locals 3
    .param p1, "regionMetadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2344
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2346
    .local v0, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1072
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isViablePhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 718
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 719
    const/4 v1, 0x0

    .line 722
    :goto_0
    return v1

    .line 721
    :cond_0
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 722
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private static loadMetadataAndCloseInput(Ljava/io/ObjectInputStream;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .locals 5
    .param p0, "source"    # Ljava/io/ObjectInputStream;

    .prologue
    .line 654
    new-instance v1, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 656
    .local v1, "metadataCollection":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 661
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :goto_0
    return-object v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 657
    :catch_1
    move-exception v0

    .line 658
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "error reading input (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 661
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 662
    :catch_2
    move-exception v0

    .line 663
    :try_start_5
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 665
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 660
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v2

    .line 661
    :try_start_6
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    .line 662
    :catch_3
    move-exception v0

    .line 663
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v2

    goto :goto_0
.end method

.method private maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1926
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1927
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_1

    .line 1928
    const-string v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1931
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1933
    :cond_2
    const-string v0, " ext. "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 742
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 743
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 746
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static normalize(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 758
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "normalizedNumber":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    return-void
.end method

.method static normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 794
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "keepNonDigits"    # Z

    .prologue
    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 775
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 776
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 777
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 778
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 775
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    :cond_1
    if-eqz p1, :cond_0

    .line 780
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 783
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_2
    return-object v5
.end method

.method public static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 770
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p2, "removeNonMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 965
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 966
    .local v3, "normalizedNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 967
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 968
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 969
    .local v2, "newDigit":Ljava/lang/Character;
    if-eqz v2, :cond_1

    .line 970
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 966
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    :cond_1
    if-nez p2, :cond_0

    .line 972
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 976
    .end local v0    # "character":C
    .end local v2    # "newDigit":Ljava/lang/Character;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 17
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2892
    if-nez p1, :cond_0

    .line 2893
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The phone number supplied was null."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2895
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_1

    .line 2896
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied was too long to parse."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2900
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2901
    .local v14, "nationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2903
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2904
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied did not seem to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2910
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2911
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "Missing or invalid default region."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2915
    :cond_3
    if-eqz p3, :cond_4

    .line 2916
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2920
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 2921
    .local v11, "extension":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 2922
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2925
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 2928
    .local v4, "regionMetadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2929
    .local v5, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 2934
    .local v9, "countryCode":I
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2952
    :cond_6
    if-eqz v9, :cond_9

    .line 2953
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v15

    .line 2954
    .local v15, "phoneNumberRegion":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2956
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 2970
    .end local v15    # "phoneNumberRegion":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    .line 2971
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too short to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2936
    :catch_0
    move-exception v10

    .line 2937
    .local v10, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 2938
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_8

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2941
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v9

    .line 2944
    if-nez v9, :cond_6

    .line 2945
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "Could not interpret numbers after plus-sign."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2949
    :cond_8
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    invoke-virtual {v10}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2961
    .end local v10    # "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    invoke-static {v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2962
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2963
    if-eqz p2, :cond_a

    .line 2964
    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v9

    .line 2965
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2966
    :cond_a
    if-eqz p3, :cond_7

    .line 2967
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2974
    :cond_b
    if-eqz v4, :cond_c

    .line 2975
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2976
    .local v8, "carrierCode":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2977
    .local v16, "potentialNationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2981
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isShorterThanPossibleNormalNumber(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2982
    move-object/from16 v5, v16

    .line 2983
    if-eqz p3, :cond_c

    .line 2984
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2988
    .end local v8    # "carrierCode":Ljava/lang/StringBuilder;
    .end local v16    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 2989
    .local v12, "lengthOfNationalNumber":I
    const/4 v2, 0x2

    if-ge v12, v2, :cond_d

    .line 2990
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too short to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2993
    :cond_d
    const/16 v2, 0x11

    if-le v12, v2, :cond_e

    .line 2994
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too long to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2997
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2998
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2999
    return-void
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2597
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2598
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2599
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 2602
    .local v2, "matchEnd":I
    sget-object v6, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2603
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2604
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2605
    .local v3, "normalizedGroup":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2612
    .end local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "matchEnd":I
    .end local v3    # "normalizedGroup":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 2609
    .restart local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .restart local v2    # "matchEnd":I
    :cond_1
    invoke-virtual {p2, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v4, v5

    .line 2610
    goto :goto_0
.end method

.method private prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x2b

    const/4 v2, 0x0

    .line 1741
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$3;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1754
    :goto_0
    return-void

    .line 1743
    :pswitch_0
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1746
    :pswitch_1
    const-string v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1749
    :pswitch_2
    const-string v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "nationalPrefix"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1565
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1566
    .local v1, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1572
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1578
    :cond_0
    :goto_0
    return v2

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    .local v0, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    goto :goto_0
.end method

.method static declared-synchronized setInstance(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)V
    .locals 2
    .param p0, "util"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 985
    const-class v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    monitor-exit v0

    return-void

    .line 985
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static setItalianLeadingZerosForPhoneNumber(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 4
    .param p0, "nationalNumber"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x1

    .line 2868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2869
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2870
    const/4 v0, 0x1

    .line 2873
    .local v0, "numberOfLeadingZeros":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2877
    :cond_0
    if-eq v0, v2, :cond_1

    .line 2878
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2881
    .end local v0    # "numberOfLeadingZeros":I
    :cond_1
    return-void
.end method

.method private testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 2
    .param p1, "numberPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2328
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2329
    .local v0, "numberMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2330
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2335
    :goto_0
    return-object v1

    .line 2332
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2333
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2335
    :cond_1
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0
.end method


# virtual methods
.method canBeInternationallyDialled(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v2, 0x1

    .line 3231
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3232
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 3238
    :cond_0
    :goto_0
    return v2

    .line 3237
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 3238
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .locals 6
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .prologue
    .line 1786
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1787
    .local v2, "numFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    .line 1788
    .local v3, "size":I
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1791
    :cond_1
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1792
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1797
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "numFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "size":I
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 2471
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 2484
    :goto_0
    return v2

    .line 2476
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2477
    .local v1, "numberLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x3

    if-gt v0, v4, :cond_3

    if-gt v0, v1, :cond_3

    .line 2478
    invoke-virtual {p1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2479
    .local v2, "potentialCountryCode":I
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2480
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2477
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "potentialCountryCode":I
    :cond_3
    move v2, v3

    .line 2484
    goto :goto_0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/libraries/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2835
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "leniency"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;
    .param p4, "maxTries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;",
            "J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/libraries/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2856
    new-instance v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$2;-><init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v0
.end method

.method public format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1097
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1103
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1104
    .local v1, "rawInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1110
    .end local v1    # "rawInput":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1109
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1120
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1121
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1122
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v4, :cond_0

    .line 1127
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v4, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1147
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1133
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1139
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 1142
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1144
    .local v1, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1146
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public formatByPattern(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1163
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1164
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    .line 1165
    .local v6, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1209
    .end local v6    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1171
    .restart local v6    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1173
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1176
    .local v3, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1178
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p3, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 1180
    .local v2, "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_1

    .line 1182
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    :goto_1
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1208
    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1184
    :cond_1
    new-instance v7, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1188
    .local v7, "numFormatCopy":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7, v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1189
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1190
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1191
    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1192
    .local v4, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1194
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1196
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "\\$1"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1198
    invoke-virtual {v7, v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1204
    .end local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p0, v6, v7, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1201
    .restart local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_2
.end method

.method public formatInOriginalFormat(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1466
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasUnexpectedItalianLeadingZero(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1470
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v5

    .line 1558
    :cond_1
    :goto_0
    return-object v5

    .line 1472
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1473
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1476
    :cond_3
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$3;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1489
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v16

    .line 1492
    .local v16, "regionCode":Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1493
    .local v10, "nationalPrefix":Ljava/lang/String;
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1494
    .local v8, "nationalFormat":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 1497
    :cond_4
    move-object v5, v8

    .line 1548
    .end local v8    # "nationalFormat":Ljava/lang/String;
    .end local v10    # "nationalPrefix":Ljava/lang/String;
    .end local v16    # "regionCode":Ljava/lang/String;
    .local v5, "formattedNumber":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v15

    .line 1551
    .local v15, "rawInput":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 1552
    invoke-static {v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1553
    .local v11, "normalizedFormattedNumber":Ljava/lang/String;
    invoke-static {v15}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1554
    .local v12, "normalizedRawInput":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1555
    move-object v5, v15

    goto :goto_0

    .line 1478
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .end local v11    # "normalizedFormattedNumber":Ljava/lang/String;
    .end local v12    # "normalizedRawInput":Ljava/lang/String;
    .end local v15    # "rawInput":Ljava/lang/String;
    :pswitch_0
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    .line 1479
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1481
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1482
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1484
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_2
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1485
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1501
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .restart local v8    # "nationalFormat":Ljava/lang/String;
    .restart local v10    # "nationalPrefix":Ljava/lang/String;
    .restart local v16    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1504
    move-object v5, v8

    .line 1505
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1509
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v7

    .line 1510
    .local v7, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v9

    .line 1511
    .local v9, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v4

    .line 1516
    .local v4, "formatRule":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v4, :cond_7

    .line 1517
    move-object v5, v8

    .line 1518
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1524
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 1526
    .local v3, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string v17, "$1"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1527
    .local v6, "indexOfFirstGroup":I
    if-gtz v6, :cond_8

    .line 1528
    move-object v5, v8

    .line 1529
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1531
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1533
    invoke-static {v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1534
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9

    .line 1536
    move-object v5, v8

    .line 1537
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 1540
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_9
    new-instance v13, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v13}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1541
    .local v13, "numFormatCopy":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v13, v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1542
    invoke-virtual {v13}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1543
    new-instance v14, Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1544
    .local v14, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 1476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public formatNationalNumberWithCarrierCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1224
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1225
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1226
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1243
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1233
    .restart local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1235
    .local v4, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1237
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1238
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v3, v2, v5, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v2, v5, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1241
    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v5, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public formatNationalNumberWithPreferredCarrierCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/String;

    .prologue
    .line 1272
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "fallbackCarrierCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1804
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatNumberForMobileDialing(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 15
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;
    .param p3, "withFormatting"    # Z

    .prologue
    .line 1291
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 1292
    .local v1, "countryCallingCode":I
    invoke-direct {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1293
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v10

    .line 1365
    :goto_0
    return-object v10

    .line 1293
    :cond_0
    const-string v10, ""

    goto :goto_0

    .line 1296
    :cond_1
    const-string v2, ""

    .line 1298
    .local v2, "formattedNumber":Ljava/lang/String;
    new-instance v10, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v10}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    .line 1299
    .local v6, "numberNoExt":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1300
    .local v8, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v7

    .line 1301
    .local v7, "numberType":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v7, v10, :cond_4

    const/4 v5, 0x1

    .line 1302
    .local v5, "isValidNumber":Z
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1303
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v7, v10, :cond_2

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v7, v10, :cond_2

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v7, v10, :cond_5

    :cond_2
    const/4 v4, 0x1

    .line 1307
    .local v4, "isFixedLineOrMobile":Z
    :goto_2
    const-string v10, "CO"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v7, v10, :cond_6

    .line 1308
    const-string v10, "3"

    invoke-virtual {p0, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1365
    .end local v4    # "isFixedLineOrMobile":Z
    :cond_3
    :goto_3
    if-eqz p3, :cond_11

    .end local v2    # "formattedNumber":Ljava/lang/String;
    :goto_4
    move-object v10, v2

    goto :goto_0

    .line 1301
    .end local v5    # "isValidNumber":Z
    .restart local v2    # "formattedNumber":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 1303
    .restart local v5    # "isValidNumber":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1310
    .restart local v4    # "isFixedLineOrMobile":Z
    :cond_6
    const-string v10, "BR"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v4, :cond_8

    .line 1311
    invoke-virtual {v6}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, ""

    invoke-virtual {p0, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .end local v2    # "formattedNumber":Ljava/lang/String;
    .local v3, "formattedNumber":Ljava/lang/String;
    :goto_5
    move-object v2, v3

    .end local v3    # "formattedNumber":Ljava/lang/String;
    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_3

    :cond_7
    const-string v3, ""

    goto :goto_5

    .line 1317
    :cond_8
    if-eqz v5, :cond_9

    const-string v10, "HU"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1322
    const/4 v10, 0x1

    invoke-virtual {p0, v8, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v6, v11}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    goto :goto_3

    :cond_9
    const/4 v10, 0x1

    if-ne v1, v10, :cond_b

    .line 1329
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v9

    .line 1330
    .local v9, "regionMetadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {p0, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isShorterThanPossibleNormalNumber(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1333
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1335
    :cond_a
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1341
    .end local v9    # "regionMetadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_b
    const-string v10, "001"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "MX"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "CL"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_c
    if-eqz v4, :cond_e

    :cond_d
    invoke-virtual {p0, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1353
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1355
    :cond_e
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1358
    .end local v4    # "isFixedLineOrMobile":Z
    :cond_f
    if-eqz v5, :cond_3

    invoke-virtual {p0, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1362
    if-eqz p3, :cond_10

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_10
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 1365
    :cond_11
    invoke-static {v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4
.end method

.method public formatOutOfCountryCallingNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1388
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1389
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x4f

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Trying to format number from invalid region "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". International formatting applied."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1393
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1446
    :cond_0
    :goto_0
    return-object v8

    .line 1395
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 1396
    .local v1, "countryCallingCode":I
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v8

    .line 1397
    .local v8, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1400
    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    .line 1401
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1404
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0xc

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1406
    :cond_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v10

    if-ne v1, v10, :cond_3

    .line 1413
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1416
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v7

    .line 1417
    .local v7, "metadataForRegionCallingFrom":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1421
    .local v4, "internationalPrefix":Ljava/lang/String;
    const-string v5, ""

    .line 1422
    .local v5, "internationalPrefixForFormatting":Ljava/lang/String;
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1423
    move-object v5, v4

    .line 1429
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v9

    .line 1431
    .local v9, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v1, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v6

    .line 1433
    .local v6, "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v8, v6, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 1435
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v3, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6, v10, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1438
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 1439
    const/4 v10, 0x0

    const-string v11, " "

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1424
    .end local v2    # "formattedNationalNumber":Ljava/lang/String;
    .end local v3    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v6    # "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v9    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1425
    invoke-virtual {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1442
    .restart local v2    # "formattedNationalNumber":Ljava/lang/String;
    .restart local v3    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v6    # "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v9    # "regionCode":Ljava/lang/String;
    :cond_6
    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v1, v10, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public formatOutOfCountryKeepingAlphaChars(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1629
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v12

    .line 1632
    .local v12, "rawInput":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    .line 1633
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1713
    :goto_0
    return-object v14

    .line 1635
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 1636
    .local v2, "countryCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v12

    .line 1637
    goto :goto_0

    .line 1643
    :cond_1
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v12

    .line 1648
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    .line 1649
    .local v10, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_2

    .line 1650
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1651
    .local v3, "firstNationalNumberDigit":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_2

    .line 1652
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1655
    .end local v3    # "firstNationalNumberDigit":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v9

    .line 1656
    .local v9, "metadataForRegionCallingFrom":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v14, 0x1

    if-ne v2, v14, :cond_3

    .line 1657
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1658
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0xc

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 1660
    :cond_3
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v14

    if-ne v2, v14, :cond_5

    .line 1662
    invoke-virtual {v9}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 1665
    .local v5, "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v5, :cond_4

    move-object v14, v12

    .line 1667
    goto/16 :goto_0

    .line 1669
    :cond_4
    new-instance v11, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v11}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1670
    .local v11, "newFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v11, v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1672
    const-string v14, "(\\d+)(.*)"

    invoke-virtual {v11, v14}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1674
    const-string v14, "$1$2"

    invoke-virtual {v11, v14}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1680
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 1682
    .end local v5    # "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .end local v11    # "newFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    :cond_5
    const-string v7, ""

    .line 1686
    .local v7, "internationalPrefixForFormatting":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 1687
    invoke-virtual {v9}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1688
    .local v6, "internationalPrefix":Ljava/lang/String;
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v7, v6

    .line 1693
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1694
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v13

    .line 1696
    .local v13, "regionCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v8

    .line 1697
    .local v8, "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v14, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1699
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 1700
    const/4 v14, 0x0

    const-string v15, " "

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, " "

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 1688
    .end local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v8    # "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v13    # "regionCode":Ljava/lang/String;
    .restart local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1705
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    .restart local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v8    # "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v13    # "regionCode":Ljava/lang/String;
    :cond_8
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x4f

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v18, "Trying to format number from invalid region "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". International formatting applied."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1709
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public getAsYouTypeFormatter(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2463
    new-instance v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCountryCodeForRegion(Ljava/lang/String;)I
    .locals 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2205
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2206
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid or missing region code ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2210
    const/4 v0, 0x0

    .line 2212
    :goto_0
    return v0

    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getExampleNumber(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1863
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getExampleNumberForNonGeoEntity(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1902
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1903
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1

    .line 1904
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1906
    .local v0, "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1907
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZZ"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1916
    .end local v0    # "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :goto_0
    return-object v3

    .line 1909
    .restart local v0    # "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :catch_0
    move-exception v1

    .line 1910
    .local v1, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1916
    .end local v0    # "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v1    # "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1913
    :cond_1
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid or unknown country calling code provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getExampleNumberForType(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 8
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    const/4 v3, 0x0

    .line 1878
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1879
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Invalid or unknown region code provided: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v2, v3

    .line 1890
    :goto_1
    return-object v2

    .line 1879
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1882
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1884
    .local v0, "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1885
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 1887
    :catch_0
    move-exception v1

    .line 1888
    .local v1, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .end local v1    # "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    :cond_2
    move-object v2, v3

    .line 1890
    goto :goto_1
.end method

.method public getLengthOfGeographicalAreaCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 3
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v1, 0x0

    .line 847
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 848
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v1

    .line 853
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    goto :goto_0
.end method

.method public getLengthOfNationalDestinationCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 8
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 900
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 903
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 904
    .local v0, "copiedProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 905
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 910
    :goto_0
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 912
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 916
    .local v3, "numberGroups":[Ljava/lang/String;
    array-length v4, v3

    if-gt v4, v7, :cond_1

    .line 917
    const/4 v4, 0x0

    .line 931
    :goto_1
    return v4

    .line 907
    .end local v0    # "copiedProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .end local v2    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v3    # "numberGroups":[Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "copiedProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_0

    .line 920
    .restart local v2    # "nationalSignificantNumber":Ljava/lang/String;
    .restart local v3    # "numberGroups":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v5, :cond_2

    .line 926
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "mobileToken":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 928
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v3, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 931
    .end local v1    # "mobileToken":Ljava/lang/String;
    :cond_2
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1
.end method

.method getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2052
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 2053
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2054
    const/4 v0, 0x0

    monitor-exit v1

    .line 2061
    :goto_0
    return-object v0

    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2057
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    const-string v2, "001"

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->metadataLoader:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    invoke-virtual {p0, v0, v2, p1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/MetadataLoader;)V

    .line 2060
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 2060
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2038
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2039
    const/4 v0, 0x0

    .line 2048
    :goto_0
    return-object v0

    .line 2041
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 2042
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->metadataLoader:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/MetadataLoader;)V

    .line 2047
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 2047
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1726
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1727
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v2

    new-array v1, v2, [C

    .line 1728
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1729
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    .end local v1    # "zeros":[C
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2246
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2247
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_2

    .line 2248
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2b

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Invalid or missing region code ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") provided."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v1, v2

    .line 2264
    :cond_1
    :goto_0
    return-object v1

    .line 2254
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 2256
    .local v1, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 2257
    goto :goto_0

    .line 2259
    :cond_3
    if-eqz p2, :cond_1

    .line 2262
    const-string/jumbo v2, "~"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 2
    .param p1, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "type"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    .line 1940
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$3;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1963
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1942
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1944
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1946
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1949
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1951
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1953
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1955
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1957
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1959
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1961
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 1940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getNumberType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 4
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1974
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1975
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1976
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 1977
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 1980
    :goto_0
    return-object v3

    .line 1979
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1980
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    goto :goto_0
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2182
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2183
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const-string v1, "ZZ"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2139
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2140
    .local v0, "countryCode":I
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2141
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 2142
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2143
    .local v1, "numberString":Ljava/lang/String;
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x36

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Missing/invalid country_code ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2145
    const/4 v3, 0x0

    .line 2150
    .end local v1    # "numberString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2147
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2148
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 2150
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRegionCodesForCountryCode(I)Ljava/util/List;
    .locals 3
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2192
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2193
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAlphaNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2302
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2304
    const/4 v1, 0x0

    .line 2308
    :goto_0
    return v1

    .line 2306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2307
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2308
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method isLeadingZeroPossible(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2282
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2285
    .local v0, "mainMetadataForCallingCode":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2286
    const/4 v1, 0x0

    .line 2288
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isLeadingZeroPossible()Z

    move-result v1

    goto :goto_0
.end method

.method public isMobileNumberPortableRegion(Ljava/lang/String;)Z
    .locals 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 3249
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3250
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 3251
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Invalid or unknown region code provided: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3252
    const/4 v1, 0x0

    .line 3254
    :goto_1
    return v1

    .line 3251
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3254
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isMobileNumberPortableRegion()Z

    move-result v1

    goto :goto_1
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isNumberGeographical(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "phoneNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 1064
    .local v0, "numberType":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 6
    .param p1, "firstNumberIn"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 3071
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3072
    .local v0, "firstNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3073
    new-instance v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3074
    .local v2, "secondNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3077
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3078
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3079
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3080
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3081
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3082
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3083
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 3085
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3087
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 3089
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3092
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3094
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    .line 3122
    :goto_0
    return-object v4

    .line 3096
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 3097
    .local v1, "firstNumberCountryCode":I
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 3099
    .local v3, "secondNumberCountryCode":I
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 3100
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3101
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3102
    :cond_3
    if-ne v1, v3, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3107
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3110
    :cond_4
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3114
    :cond_5
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3116
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3117
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3119
    :cond_6
    invoke-direct {p0, v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3120
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3122
    :cond_7
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method public isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 11
    .param p1, "firstNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 3188
    :try_start_0
    const-string v0, "ZZ"

    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v9

    .line 3189
    .local v9, "secondNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3217
    .end local v9    # "secondNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v8

    .line 3190
    :catch_0
    move-exception v6

    .line 3191
    .local v6, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    invoke-virtual {v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_2

    .line 3195
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v7

    .line 3197
    .local v7, "firstNumberRegion":Ljava/lang/String;
    :try_start_1
    const-string v0, "ZZ"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3198
    invoke-virtual {p0, p2, v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    .line 3199
    .local v10, "secondNumberWithFirstNumberRegion":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v8

    .line 3200
    .local v8, "match":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v8, v0, :cond_0

    .line 3201
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3207
    .end local v8    # "match":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .end local v10    # "secondNumberWithFirstNumberRegion":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1
    new-instance v5, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v5}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3208
    .local v5, "secondNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3209
    invoke-virtual {p0, p1, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 3211
    .end local v5    # "secondNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v0

    .line 3217
    .end local v7    # "firstNumberRegion":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method public isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 19
    .param p1, "firstNumber"    # Ljava/lang/String;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 3148
    :try_start_0
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v17

    .line 3149
    .local v17, "firstNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3171
    .end local v17    # "firstNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    return-object v3

    .line 3150
    :catch_0
    move-exception v15

    .line 3151
    .local v15, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    invoke-virtual {v15}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 3153
    :try_start_1
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v18

    .line 3154
    .local v18, "secondNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 3155
    .end local v18    # "secondNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v16

    .line 3156
    .local v16, "e2":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 3158
    :try_start_2
    new-instance v8, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v8}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3159
    .local v8, "firstNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v14, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v14}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3160
    .local v14, "secondNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3161
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {v9 .. v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3162
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_2
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 3163
    .end local v8    # "firstNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .end local v14    # "secondNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :catch_2
    move-exception v3

    .line 3171
    .end local v16    # "e2":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    :cond_0
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 2072
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2075
    .local v0, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberPossibleForDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isNumberPossibleForDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 2065
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2068
    .local v0, "possibleNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public isPossibleNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2318
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    .line 2423
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2425
    :goto_0
    return v1

    .line 2424
    :catch_0
    move-exception v0

    .line 2425
    .local v0, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPossibleNumberWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 10
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2372
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2373
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2378
    .local v0, "countryCode":I
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2379
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2399
    :goto_0
    return-object v7

    .line 2381
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v6

    .line 2383
    .local v6, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2384
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2386
    .local v1, "generalNumDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2387
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v9, "Checking if number is possible with incomplete metadata."

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2388
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2389
    .local v4, "numberLength":I
    const/4 v7, 0x2

    if-ge v4, v7, :cond_1

    .line 2390
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2391
    :cond_1
    const/16 v7, 0x11

    if-le v4, v7, :cond_2

    .line 2392
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2394
    :cond_2
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2397
    .end local v4    # "numberLength":I
    :cond_3
    iget-object v7, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 2399
    .local v5, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v5, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v7

    goto :goto_0
.end method

.method public isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2087
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2088
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidNumberForRegion(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 9
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2108
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2109
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2110
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    const-string v7, "001"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_2

    :cond_0
    move v5, v6

    .line 2127
    :cond_1
    :goto_0
    return v5

    .line 2117
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2118
    .local v1, "generalNumDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2123
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2124
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2125
    .local v4, "numberLength":I
    const/4 v7, 0x2

    if-le v4, v7, :cond_3

    const/16 v7, 0x11

    if-le v4, v7, :cond_1

    :cond_3
    move v5, v6

    goto :goto_0

    .line 2127
    .end local v4    # "numberLength":I
    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v7

    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v7, v8, :cond_1

    move v5, v6

    goto :goto_0
.end method

.method loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/MetadataLoader;)V
    .locals 15
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "countryCallingCode"    # I
    .param p4, "metadataLoader"    # Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    .prologue
    .line 613
    const-string v10, "001"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 614
    .local v5, "isNonGeoRegion":Z
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    if-eqz v5, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "fileName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/google/android/libraries/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 617
    .local v9, "source":Ljava/io/InputStream;
    if-nez v9, :cond_3

    .line 618
    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v13, "missing metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v11, v12, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 619
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "missing metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v2    # "fileName":Ljava/lang/String;
    .end local v9    # "source":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v10, p2

    .line 614
    goto :goto_0

    .line 618
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v9    # "source":Ljava/io/InputStream;
    :cond_1
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 619
    :cond_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 621
    :cond_3
    const/4 v3, 0x0

    .line 623
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 624
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->loadMetadataAndCloseInput(Ljava/io/ObjectInputStream;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    move-result-object v7

    .line 625
    .local v7, "metadataCollection":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v8

    .line 626
    .local v8, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 627
    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v13, "empty metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v11, v12, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 628
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "empty metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    .end local v7    # "metadataCollection":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 640
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :goto_5
    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v13, "cannot load/parse metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_6
    invoke-virtual {v11, v12, v10, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "cannot load/parse metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_7
    invoke-direct {v11, v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 627
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v7    # "metadataCollection":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :cond_4
    :try_start_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 628
    :cond_5
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 630
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_7

    .line 631
    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v13, "invalid metadata (too many entries): "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_8
    invoke-virtual {v11, v12, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 633
    :cond_7
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 634
    .local v6, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v5, :cond_9

    .line 635
    iget-object v10, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :goto_9
    return-void

    .line 631
    .end local v6    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_8
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 637
    .restart local v6    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_9
    iget-object v10, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    .line 640
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .end local v6    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v7    # "metadataCollection":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :cond_a
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 641
    :cond_b
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 639
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto/16 :goto_5
.end method

.method maybeExtractCountryCode(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 15
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultRegionMetadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2523
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 2524
    const/4 v9, 0x0

    .line 2589
    :goto_0
    return v9

    .line 2526
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2528
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string v7, "NonMatch"

    .line 2529
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2530
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 2533
    :cond_1
    invoke-virtual {p0, v4, v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    .line 2535
    .local v1, "countryCodeSource":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_2

    .line 2536
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2538
    :cond_2
    sget-object v12, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v12, :cond_5

    .line 2539
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_3

    .line 2540
    new-instance v12, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v13, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v14, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v12, v13, v14}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2544
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v9

    .line 2545
    .local v9, "potentialCountryCode":I
    if-eqz v9, :cond_4

    .line 2546
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2552
    :cond_4
    new-instance v12, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v13, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v14, "Country calling code supplied was not recognised."

    invoke-direct {v12, v13, v14}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2554
    .end local v9    # "potentialCountryCode":I
    :cond_5
    if-eqz p2, :cond_9

    .line 2558
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    .line 2559
    .local v2, "defaultCountryCode":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2560
    .local v3, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2561
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2562
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2564
    .local v10, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 2565
    .local v5, "generalDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v12, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 2567
    .local v11, "validNumberPattern":Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0, v12}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2569
    iget-object v12, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 2574
    .local v8, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v12}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v12

    sget-object v13, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v12, v13, :cond_9

    .line 2578
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2579
    if-eqz p4, :cond_8

    .line 2580
    sget-object v12, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2582
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move v9, v2

    .line 2583
    goto/16 :goto_0

    .line 2588
    .end local v2    # "defaultCountryCode":I
    .end local v3    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v5    # "generalDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "possibleNumberPattern":Ljava/util/regex/Pattern;
    .end local v10    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v11    # "validNumberPattern":Ljava/util/regex/Pattern;
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2589
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2720
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2723
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2725
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 2726
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2729
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2730
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2735
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_1
    return-object v0

    .line 2725
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2735
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .locals 4
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    .prologue
    .line 2631
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2632
    sget-object v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 2645
    :goto_0
    return-object v2

    .line 2635
    :cond_0
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2636
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2637
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2639
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2640
    sget-object v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    .line 2643
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2644
    .local v0, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2645
    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0
.end method

.method maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "carrierCode"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2662
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2663
    .local v3, "numberLength":I
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    .line 2664
    .local v4, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 2708
    :cond_0
    :goto_0
    return v8

    .line 2669
    :cond_1
    iget-object v10, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v10, v4}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 2670
    .local v5, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2671
    iget-object v10, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2674
    .local v1, "nationalNumberRule":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 2678
    .local v0, "isViableOriginalNumber":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 2679
    .local v2, "numOfGroups":I
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v6

    .line 2680
    .local v6, "transformRule":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 2683
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2687
    :cond_3
    if-eqz p3, :cond_4

    if-lez v2, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 2688
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v8, v9

    .line 2691
    goto :goto_0

    .line 2695
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2696
    .local v7, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v3, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2697
    if-eqz v0, :cond_6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2701
    :cond_6
    if-eqz p3, :cond_7

    if-le v2, v9, :cond_7

    .line 2702
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2704
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v8, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v9

    .line 2705
    goto/16 :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2776
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2777
    .local v0, "phoneNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2778
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2787
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2788
    return-void
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2807
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2808
    .local v0, "phoneNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2809
    return-object v0
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2819
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2820
    return-void
.end method

.method public truncateTooLongNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 6
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x1

    .line 2437
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2452
    :goto_0
    return v3

    .line 2440
    :cond_0
    new-instance v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2441
    .local v2, "numberCopy":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2442
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    .line 2444
    .local v0, "nationalNumber":J
    :cond_1
    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    .line 2445
    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2446
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 2448
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2450
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2451
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0
.end method
