.class public Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final GEO_MOBILE_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0x11

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

.field private final metadataSource:Lcom/google/android/libraries/phonenumbers/MetadataSource;

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
    .locals 15

    .prologue
    .line 56
    const-class v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    .line 123
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v8, "mobileTokenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "9"

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 128
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 129
    .local v7, "geoMobileCountriesWithoutMobileAreaCodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v11, 0x56

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 133
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 134
    .local v6, "geoMobileCountries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    const/16 v11, 0x3e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v11, 0x30

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x30

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v11, 0x31

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x31

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x32

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x33

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x34

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x35

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x36

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x37

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x38

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x39

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/util/HashMap;

    const/16 v11, 0x28

    invoke-direct {v1, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 156
    .local v1, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v11, 0x41

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x32

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v11, 0x42

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x32

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v11, 0x43

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x32

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v11, 0x44

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x33

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v11, 0x45

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x33

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v11, 0x46

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x33

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v11, 0x47

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x34

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v11, 0x48

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x34

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v11, 0x49

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x34

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v11, 0x4a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x35

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v11, 0x4b

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x35

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v11, 0x4c

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x35

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v11, 0x4d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x36

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/16 v11, 0x4e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x36

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/16 v11, 0x4f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x36

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/16 v11, 0x50

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x37

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v11, 0x51

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x37

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v11, 0x52

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x37

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v11, 0x53

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x37

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/16 v11, 0x54

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x38

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/16 v11, 0x55

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x38

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/16 v11, 0x56

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x38

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/16 v11, 0x57

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x39

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/16 v11, 0x58

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x39

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v11, 0x59

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x39

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/16 v11, 0x5a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x39

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 184
    new-instance v4, Ljava/util/HashMap;

    const/16 v11, 0x64

    invoke-direct {v4, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 185
    .local v4, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 189
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v5, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 191
    const/16 v11, 0x2b

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2b

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v11, 0x2a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2a

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v11, 0x23

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x23

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v0, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Character;

    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 199
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    .end local v3    # "c":C
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 204
    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const v11, 0xff0d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/16 v11, 0x2010

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/16 v11, 0x2011

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v11, 0x2012

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/16 v11, 0x2013

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v11, 0x2014

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/16 v11, 0x2015

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const/16 v11, 0x2212

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2d

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/16 v11, 0x2f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const v11, 0xff0f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/16 v11, 0x3000

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const/16 v11, 0x2060

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2e

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const v11, 0xff0e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x2e

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 229
    const-string v11, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 230
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 243
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 244
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "[, \\[\\]]"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 245
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 246
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "[, \\[\\]]"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 248
    const-string v11, "[+\uff0b]+"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 249
    const-string v11, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 250
    const-string v11, "(\\p{Nd})"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 259
    const-string v11, "[+\uff0b\\p{Nd}]"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 267
    const-string v11, "[\\\\/] *x"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 273
    const-string v11, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 277
    const-string v11, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 295
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\\p{Nd}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 316
    const-string v9, "x\uff58#\uff03~\uff5e"

    .line 320
    .local v9, "singleExtnSymbolsForMatching":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "singleExtnSymbolsForParsing":Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 323
    invoke-static {v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 350
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(?:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x42

    .line 351
    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 355
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(?:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x42

    .line 356
    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 358
    const-string v11, "(\\D+)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 364
    const-string v11, "(\\$\\d)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 365
    const-string v11, "\\$NP"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 366
    const-string v11, "\\$FG"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 367
    const-string v11, "\\$CC"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 372
    const-string v11, "\\(?\\$1\\)?"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 374
    const/4 v11, 0x0

    sput-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/phonenumbers/MetadataSource;Ljava/util/Map;)V
    .locals 6
    .param p1, "metadataSource"    # Lcom/google/android/libraries/phonenumbers/MetadataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/phonenumbers/MetadataSource;",
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
    .local p2, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v5, 0x1

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 587
    new-instance v2, Lcom/google/android/libraries/phonenumbers/RegexCache;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/google/android/libraries/phonenumbers/RegexCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    .line 592
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x140

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 596
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 604
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/google/android/libraries/phonenumbers/MetadataSource;

    .line 605
    iput-object p2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 606
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 607
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 610
    .local v1, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string v3, "001"

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 615
    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 621
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    const-string v3, "001"

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 625
    :cond_2
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 626
    return-void
.end method

.method private buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3272
    const-string v6, ";phone-context="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3273
    .local v2, "indexOfPhoneContext":I
    if-lez v2, :cond_4

    .line 3274
    const-string v6, ";phone-context="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v5, v2, v6

    .line 3277
    .local v5, "phoneContextStart":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_0

    .line 3281
    const/16 v6, 0x3b

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 3282
    .local v4, "phoneContextEnd":I
    if-lez v4, :cond_2

    .line 3283
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3293
    .end local v4    # "phoneContextEnd":I
    :cond_0
    :goto_0
    const-string v6, "tel:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3294
    .local v3, "indexOfRfc3966Prefix":I
    if-ltz v3, :cond_3

    const-string v6, "tel:"

    .line 3295
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v3, v6

    .line 3296
    .local v1, "indexOfNationalNumber":I
    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3305
    .end local v1    # "indexOfNationalNumber":I
    .end local v3    # "indexOfRfc3966Prefix":I
    .end local v5    # "phoneContextStart":I
    :goto_2
    const-string v6, ";isub="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3306
    .local v0, "indexOfIsdn":I
    if-lez v0, :cond_1

    .line 3307
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p2, v0, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3313
    :cond_1
    return-void

    .line 3285
    .end local v0    # "indexOfIsdn":I
    .restart local v4    # "phoneContextEnd":I
    .restart local v5    # "phoneContextStart":I
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3295
    .end local v4    # "phoneContextEnd":I
    .restart local v3    # "indexOfRfc3966Prefix":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 3300
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
    .line 3001
    invoke-direct {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3003
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 3004
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3005
    :cond_0
    const/4 v0, 0x0

    .line 3008
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
    .line 760
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static copyCoreFieldsOnly(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 4
    .param p0, "phoneNumberIn"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 3321
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3322
    .local v0, "phoneNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3323
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3324
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3325
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3327
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3330
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3332
    :cond_1
    return-object v0
.end method

.method private static createExtnPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "singleExtnSymbols"    # Ljava/lang/String;

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]|int|anexo|\uff49\uff4e\uff54)[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\\p{Nd}{1,7})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#?|[- ]+("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{1,5})#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Lcom/google/android/libraries/phonenumbers/MetadataLoader;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    .locals 2
    .param p0, "metadataLoader"    # Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    .prologue
    .line 1084
    if-nez p0, :cond_0

    .line 1085
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataLoader could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    new-instance v0, Lcom/google/android/libraries/phonenumbers/MultiFileMetadataSourceImpl;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/phonenumbers/MultiFileMetadataSourceImpl;-><init>(Lcom/google/android/libraries/phonenumbers/MetadataLoader;)V

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/google/android/libraries/phonenumbers/MetadataSource;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    return-object v0
.end method

.method private static createInstance(Lcom/google/android/libraries/phonenumbers/MetadataSource;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    .locals 2
    .param p0, "metadataSource"    # Lcom/google/android/libraries/phonenumbers/MetadataSource;

    .prologue
    .line 1103
    if-nez p0, :cond_0

    .line 1104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataSource could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_0
    new-instance v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    .line 1107
    invoke-static {}, Lcom/google/android/libraries/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;-><init>(Lcom/google/android/libraries/phonenumbers/MetadataSource;Ljava/util/Map;)V

    .line 1106
    return-object v0
.end method

.method private static descHasData(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 2
    .param p0, "desc"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    invoke-static {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 996
    :goto_0
    return v0

    .line 998
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static descHasPossibleNumberData(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 4
    .param p0, "desc"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 981
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method static extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 644
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 645
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 646
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 648
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 649
    .local v2, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 651
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stripped trailing characters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 654
    :cond_0
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 655
    .local v1, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 660
    .end local v1    # "secondNumber":Ljava/util/regex/Matcher;
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    .end local p0    # "number":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "number":Ljava/lang/String;
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method private formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1843
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
    .line 1854
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v2

    .line 1858
    .local v2, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_1

    .line 1859
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 1861
    .local v0, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1862
    .local v1, "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v1, :cond_2

    .end local p1    # "number":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 1860
    .end local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v1    # "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1864
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
    .line 1896
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 1897
    .local v6, "numberFormatRule":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    .line 1898
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1899
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 1900
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_2

    if-eqz p4, :cond_2

    .line 1901
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1902
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1904
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 1905
    .local v0, "carrierCodeFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 1906
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1910
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1911
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1925
    .end local v0    # "carrierCodeFormattingRule":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_1

    .line 1927
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1928
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1929
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1932
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1934
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2

    .line 1914
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1915
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_3

    if-eqz v5, :cond_3

    .line 1917
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1918
    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1920
    .local v1, "firstGroupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1921
    goto :goto_0

    .line 1922
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
    .line 1115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 1116
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1115
    :goto_0
    return v0

    .line 1116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCountryCodeForValidRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2382
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2383
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2384
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid region code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2386
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    return v1
.end method

.method public static getCountryMobileToken(I)Ljava/lang/String;
    .locals 2
    .param p0, "countryCallingCode"    # I

    .prologue
    .line 911
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 914
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    .locals 2

    .prologue
    .line 1065
    const-class v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 1066
    sget-object v0, Lcom/google/android/libraries/phonenumbers/MetadataManager;->DEFAULT_METADATA_LOADER:Lcom/google/android/libraries/phonenumbers/MetadataLoader;

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/google/android/libraries/phonenumbers/MetadataLoader;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)V

    .line 1068
    :cond_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1065
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
    .line 1322
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1322
    :goto_0
    return-object v0

    .line 1324
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 2
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 2161
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2162
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2205
    :goto_0
    return-object v1

    .line 2165
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2166
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2168
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2169
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2171
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2172
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2174
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2175
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2177
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2178
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2180
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2181
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2183
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2184
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2186
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2187
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2190
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    .line 2191
    .local v0, "isFixedLine":Z
    if-eqz v0, :cond_b

    .line 2192
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2193
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2194
    :cond_9
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2195
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2197
    :cond_a
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2201
    :cond_b
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2202
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2203
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2205
    :cond_c
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

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
    .line 2314
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2315
    .local v1, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2318
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2319
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2320
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 2321
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2328
    .end local v0    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2324
    .restart local v0    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v2    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 2328
    .end local v0    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSupportedTypesForMetadata(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;
    .locals 6
    .param p1, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 1007
    .local v1, "types":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;>;"
    invoke-static {}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->values()[Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 1008
    .local v0, "type":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v5, :cond_1

    .line 1007
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->descHasData(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1014
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1017
    .end local v0    # "type":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private hasFormattingPatternForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x0

    .line 1671
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1672
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1674
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1675
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v2, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return v5

    .line 1678
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1680
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1681
    .local v1, "formatRule":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private hasUnexpectedItalianLeadingZero(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 1
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1667
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
    .line 1153
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
    .line 3397
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3398
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3400
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3401
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 3400
    :goto_0
    return v2

    .line 3401
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1146
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
    .line 676
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 677
    const/4 v1, 0x0

    .line 680
    :goto_0
    return v1

    .line 679
    :cond_0
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 680
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2103
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2104
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_1

    .line 2105
    const-string v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    :cond_0
    :goto_0
    return-void

    .line 2107
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2108
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2110
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
    .line 700
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 701
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 704
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
    .line 716
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "normalizedNumber":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    return-void
.end method

.method public static normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 752
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
    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 733
    .local v2, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-char v0, v4, v3

    .line 734
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 735
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 736
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 737
    :cond_1
    if-eqz p1, :cond_0

    .line 738
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 741
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2
    return-object v2
.end method

.method public static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 728
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
    .line 932
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 933
    .local v3, "normalizedNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 934
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 935
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 936
    .local v2, "newDigit":Ljava/lang/Character;
    if-eqz v2, :cond_1

    .line 937
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 933
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    :cond_1
    if-nez p2, :cond_0

    .line 939
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 943
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
    .line 3157
    if-nez p1, :cond_0

    .line 3158
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The phone number supplied was null."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3160
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_1

    .line 3161
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied was too long to parse."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3165
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3166
    .local v14, "nationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3168
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3169
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied did not seem to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3175
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3176
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "Missing or invalid default region."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3180
    :cond_3
    if-eqz p3, :cond_4

    .line 3181
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3185
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 3186
    .local v11, "extension":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 3187
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3190
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 3193
    .local v4, "regionMetadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3194
    .local v5, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 3199
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

    .line 3217
    :cond_6
    if-eqz v9, :cond_9

    .line 3218
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v15

    .line 3219
    .local v15, "phoneNumberRegion":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3221
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 3235
    .end local v15    # "phoneNumberRegion":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    .line 3236
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too short to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3201
    :catch_0
    move-exception v10

    .line 3202
    .local v10, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 3203
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_8

    .line 3204
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3206
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v9

    .line 3209
    if-nez v9, :cond_6

    .line 3210
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "Could not interpret numbers after plus-sign."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3214
    :cond_8
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    invoke-virtual {v10}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3226
    .end local v10    # "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    invoke-static {v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 3227
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3228
    if-eqz p2, :cond_a

    .line 3229
    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v9

    .line 3230
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 3231
    :cond_a
    if-eqz p3, :cond_7

    .line 3232
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 3239
    :cond_b
    if-eqz v4, :cond_c

    .line 3240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3241
    .local v8, "carrierCode":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3242
    .local v16, "potentialNationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 3246
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v2, v3, :cond_c

    .line 3248
    move-object/from16 v5, v16

    .line 3249
    if-eqz p3, :cond_c

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 3250
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3254
    .end local v8    # "carrierCode":Ljava/lang/StringBuilder;
    .end local v16    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 3255
    .local v12, "lengthOfNationalNumber":I
    const/4 v2, 0x2

    if-ge v12, v2, :cond_d

    .line 3256
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too short to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3259
    :cond_d
    const/16 v2, 0x11

    if-le v12, v2, :cond_e

    .line 3260
    new-instance v2, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too long to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3263
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3265
    return-void
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2854
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2855
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2856
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 2859
    .local v2, "matchEnd":I
    sget-object v6, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2860
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2861
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2862
    .local v3, "normalizedGroup":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2869
    .end local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "matchEnd":I
    .end local v3    # "normalizedGroup":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 2866
    .restart local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .restart local v2    # "matchEnd":I
    :cond_1
    invoke-virtual {p2, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v4, v5

    .line 2867
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

    .line 1824
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1837
    :goto_0
    return-void

    .line 1826
    :pswitch_0
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1829
    :pswitch_1
    const-string v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1832
    :pswitch_2
    const-string v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tel:"

    .line 1833
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1824
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

    .line 1646
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1647
    .local v1, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1654
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 1653
    invoke-virtual {p0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1659
    :cond_0
    :goto_0
    return v2

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    goto :goto_0
.end method

.method static declared-synchronized setInstance(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)V
    .locals 2
    .param p0, "util"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 952
    const-class v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    monitor-exit v0

    return-void

    .line 952
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

    .line 3130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3131
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3132
    const/4 v0, 0x1

    .line 3135
    .local v0, "numberOfLeadingZeros":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 3136
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3139
    :cond_0
    if-eq v0, v2, :cond_1

    .line 3140
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3143
    .end local v0    # "numberOfLeadingZeros":I
    :cond_1
    return-void
.end method

.method private testNumberLength(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 2511
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method private testNumberLength(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "type"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    const/4 v10, 0x0

    .line 2522
    invoke-virtual {p0, p2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2529
    .local v1, "descForType":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2530
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v6

    .line 2532
    .local v6, "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v2

    .line 2534
    .local v2, "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, v8, :cond_2

    .line 2535
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2538
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v8

    .line 2587
    .end local v6    # "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    return-object v8

    .line 2530
    .end local v2    # "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 2540
    .restart local v2    # "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 2541
    .local v5, "mobileDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-static {v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2543
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2547
    .end local v6    # "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 2548
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v8

    .line 2547
    :goto_2
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2552
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2554
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2555
    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v2

    move-object v6, v7

    .line 2567
    .end local v5    # "mobileDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v7    # "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :goto_3
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 2568
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_1

    .line 2549
    .restart local v5    # "mobileDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .restart local v7    # "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v8

    goto :goto_2

    .line 2557
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2558
    .end local v2    # "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2559
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v2, v3

    .end local v3    # "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v6, v7

    .local v6, "possibleLengths":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 2571
    .end local v5    # "mobileDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "possibleLengths":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2574
    .local v0, "actualLength":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2575
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_1

    .line 2578
    :cond_6
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2579
    .local v4, "minimumLength":I
    if-ne v4, v0, :cond_7

    .line 2580
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_1

    .line 2581
    :cond_7
    if-le v4, v0, :cond_8

    .line 2582
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto/16 :goto_1

    .line 2583
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v0, :cond_9

    .line 2584
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto/16 :goto_1

    .line 2587
    :cond_9
    const/4 v8, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v6, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto/16 :goto_1

    :cond_a
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto/16 :goto_1
.end method


# virtual methods
.method canBeInternationallyDialled(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v2, 0x1

    .line 3500
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3501
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 3507
    :cond_0
    :goto_0
    return v2

    .line 3506
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 3507
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
    .line 1869
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1870
    .local v1, "numFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v2

    .line 1871
    .local v2, "size":I
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    add-int/lit8 v5, v2, -0x1

    .line 1873
    invoke-virtual {v1, v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    .line 1871
    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1873
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1874
    :cond_1
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1875
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1880
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "numFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "size":I
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 2730
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 2743
    :goto_0
    return v2

    .line 2735
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2736
    .local v1, "numberLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x3

    if-gt v0, v4, :cond_3

    if-gt v0, v1, :cond_3

    .line 2737
    invoke-virtual {p1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2738
    .local v2, "potentialCountryCode":I
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2739
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2736
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "potentialCountryCode":I
    :cond_3
    move v2, v3

    .line 2743
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
    .line 3097
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
    .locals 8
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
    .line 3117
    new-instance v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;-><init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v1
.end method

.method public format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1171
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1177
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1178
    .local v1, "rawInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1184
    .end local v1    # "rawInput":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1183
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1184
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
    .line 1194
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1195
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1196
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v4, :cond_0

    .line 1201
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v4, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1221
    :goto_0
    return-void

    .line 1206
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1207
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1213
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 1217
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1218
    .local v1, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1220
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
    .line 1237
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1238
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    .line 1239
    .local v6, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1283
    .end local v6    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1245
    .restart local v6    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1248
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1250
    .local v3, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1253
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p3, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 1254
    .local v2, "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_1

    .line 1256
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    :goto_1
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1282
    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1258
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v7

    .line 1262
    .local v7, "numFormatCopy":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v7, v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1263
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1264
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1265
    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1266
    .local v4, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1268
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 1269
    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1270
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 1271
    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "\\$1"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1272
    invoke-virtual {v7, v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1279
    .end local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p0, v6, v7, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    .line 1278
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1275
    .restart local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;->clearNationalPrefixFormattingRule()Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_2
.end method

.method public formatInOriginalFormat(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1547
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1548
    invoke-direct/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasUnexpectedItalianLeadingZero(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1551
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v5

    .line 1639
    :cond_1
    :goto_0
    return-object v5

    .line 1553
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1554
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1557
    :cond_3
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1570
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v16

    .line 1573
    .local v16, "regionCode":Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1574
    .local v10, "nationalPrefix":Ljava/lang/String;
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1575
    .local v8, "nationalFormat":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 1578
    :cond_4
    move-object v5, v8

    .line 1629
    .end local v8    # "nationalFormat":Ljava/lang/String;
    .end local v10    # "nationalPrefix":Ljava/lang/String;
    .end local v16    # "regionCode":Ljava/lang/String;
    .local v5, "formattedNumber":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v15

    .line 1632
    .local v15, "rawInput":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 1633
    invoke-static {v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1634
    .local v11, "normalizedFormattedNumber":Ljava/lang/String;
    invoke-static {v15}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1635
    .local v12, "normalizedRawInput":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1636
    move-object v5, v15

    goto :goto_0

    .line 1559
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

    .line 1560
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1562
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1563
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1565
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

    .line 1566
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1583
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .restart local v8    # "nationalFormat":Ljava/lang/String;
    .restart local v10    # "nationalPrefix":Ljava/lang/String;
    .restart local v16    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v17

    .line 1582
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1585
    move-object v5, v8

    .line 1586
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1590
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v7

    .line 1591
    .local v7, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v9

    .line 1593
    .local v9, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v4

    .line 1597
    .local v4, "formatRule":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v4, :cond_7

    .line 1598
    move-object v5, v8

    .line 1599
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1605
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 1607
    .local v3, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string v17, "$1"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1608
    .local v6, "indexOfFirstGroup":I
    if-gtz v6, :cond_8

    .line 1609
    move-object v5, v8

    .line 1610
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 1612
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    .line 1613
    move/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1614
    invoke-static {v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1615
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9

    .line 1617
    move-object v5, v8

    .line 1618
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 1621
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v13

    .line 1622
    .local v13, "numFormatCopy":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v13, v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1623
    invoke-virtual {v13}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;->clearNationalPrefixFormattingRule()Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1624
    new-instance v14, Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1625
    .local v14, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    sget-object v17, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 1557
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
    .line 1298
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1299
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1317
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1307
    .restart local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1309
    .local v4, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1311
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1312
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v3, v2, v5, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v2, v5, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1315
    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v5, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public formatNationalNumberWithPreferredCarrierCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/String;

    .prologue
    .line 1346
    .line 1350
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1351
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    .line 1346
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
    .line 1887
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatNumberForMobileDialing(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;
    .param p3, "withFormatting"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1369
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1370
    .local v0, "countryCallingCode":I
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1371
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v9

    .line 1446
    :goto_0
    return-object v9

    .line 1371
    :cond_0
    const-string v9, ""

    goto :goto_0

    .line 1374
    :cond_1
    const-string v1, ""

    .line 1376
    .local v1, "formattedNumber":Ljava/lang/String;
    new-instance v11, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v11}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v11, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 1377
    .local v5, "numberNoExt":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v7

    .line 1378
    .local v7, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v6

    .line 1379
    .local v6, "numberType":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v6, v11, :cond_4

    move v4, v9

    .line 1380
    .local v4, "isValidNumber":Z
    :goto_1
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1381
    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v6, v11, :cond_2

    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v6, v11, :cond_2

    sget-object v11, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v6, v11, :cond_5

    :cond_2
    move v3, v9

    .line 1385
    .local v3, "isFixedLineOrMobile":Z
    :goto_2
    const-string v10, "CO"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v6, v10, :cond_6

    .line 1386
    const-string v9, "3"

    .line 1387
    invoke-virtual {p0, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .end local v3    # "isFixedLineOrMobile":Z
    :cond_3
    :goto_3
    if-eqz p3, :cond_11

    .end local v1    # "formattedNumber":Ljava/lang/String;
    :goto_4
    move-object v9, v1

    goto :goto_0

    .end local v4    # "isValidNumber":Z
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    :cond_4
    move v4, v10

    .line 1379
    goto :goto_1

    .restart local v4    # "isValidNumber":Z
    :cond_5
    move v3, v10

    .line 1381
    goto :goto_2

    .line 1388
    .restart local v3    # "isFixedLineOrMobile":Z
    :cond_6
    const-string v10, "BR"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v3, :cond_8

    .line 1392
    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    const-string v9, ""

    .line 1393
    invoke-virtual {p0, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .end local v1    # "formattedNumber":Ljava/lang/String;
    .local v2, "formattedNumber":Ljava/lang/String;
    :goto_5
    move-object v1, v2

    .end local v2    # "formattedNumber":Ljava/lang/String;
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    goto :goto_3

    :cond_7
    const-string v2, ""

    goto :goto_5

    .line 1398
    :cond_8
    if-eqz v4, :cond_9

    const-string v10, "HU"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1403
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1404
    invoke-virtual {p0, v7, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1405
    invoke-virtual {p0, v5, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1406
    :cond_9
    if-ne v0, v9, :cond_b

    .line 1410
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v8

    .line 1411
    .local v8, "regionMetadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1412
    invoke-virtual {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v9

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v9, v10, :cond_a

    .line 1414
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1416
    :cond_a
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1422
    .end local v8    # "regionMetadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_b
    const-string v9, "001"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "MX"

    .line 1431
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "CL"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_c
    if-eqz v3, :cond_e

    .line 1433
    :cond_d
    invoke-virtual {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1434
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1436
    :cond_e
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 1439
    .end local v3    # "isFixedLineOrMobile":Z
    :cond_f
    if-eqz v4, :cond_3

    invoke-virtual {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1443
    if-eqz p3, :cond_10

    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_10
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1444
    invoke-virtual {p0, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1447
    :cond_11
    invoke-static {v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4
.end method

.method public formatOutOfCountryCallingNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1469
    invoke-direct {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1470
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trying to format number from invalid region "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". International formatting applied."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1474
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    .line 1527
    :cond_0
    :goto_0
    return-object v7

    .line 1476
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1477
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v7

    .line 1478
    .local v7, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1481
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 1482
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1485
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1487
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v9

    if-ne v0, v9, :cond_3

    .line 1494
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1497
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v6

    .line 1498
    .local v6, "metadataForRegionCallingFrom":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v6}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v3

    .line 1502
    .local v3, "internationalPrefix":Ljava/lang/String;
    const-string v4, ""

    .line 1503
    .local v4, "internationalPrefixForFormatting":Ljava/lang/String;
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1504
    move-object v4, v3

    .line 1510
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1513
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v5

    .line 1514
    .local v5, "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1515
    invoke-direct {p0, v7, v5, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1516
    .local v1, "formattedNationalNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v2, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v5, v9, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1519
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1520
    const-string v9, " "

    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v11, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1521
    invoke-virtual {v9, v11, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1505
    .end local v1    # "formattedNationalNumber":Ljava/lang/String;
    .end local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v5    # "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v8    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1507
    invoke-virtual {v6}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1523
    .restart local v1    # "formattedNationalNumber":Ljava/lang/String;
    .restart local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v5    # "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v8    # "regionCode":Ljava/lang/String;
    :cond_6
    sget-object v9, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v9, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public formatOutOfCountryKeepingAlphaChars(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1710
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v12

    .line 1713
    .local v12, "rawInput":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    .line 1714
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1796
    :goto_0
    return-object v14

    .line 1716
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 1717
    .local v2, "countryCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v12

    .line 1718
    goto :goto_0

    .line 1724
    :cond_1
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v12

    .line 1729
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    .line 1730
    .local v10, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_2

    .line 1731
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1732
    .local v3, "firstNationalNumberDigit":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_2

    .line 1733
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1736
    .end local v3    # "firstNationalNumberDigit":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v9

    .line 1737
    .local v9, "metadataForRegionCallingFrom":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v14, 0x1

    if-ne v2, v14, :cond_3

    .line 1738
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1739
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 1741
    :cond_3
    if-eqz v9, :cond_5

    .line 1742
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v14

    if-ne v2, v14, :cond_5

    .line 1744
    invoke-virtual {v9}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 1746
    .local v5, "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v5, :cond_4

    move-object v14, v12

    .line 1748
    goto :goto_0

    .line 1750
    :cond_4
    invoke-static {}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v11

    .line 1751
    .local v11, "newFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v11, v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1753
    const-string v14, "(\\d+)(.*)"

    invoke-virtual {v11, v14}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;->setPattern(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1755
    const-string v14, "$1$2"

    invoke-virtual {v11, v14}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;->setFormat(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1761
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 1763
    .end local v5    # "formattingPattern":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .end local v11    # "newFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat$Builder;
    :cond_5
    const-string v7, ""

    .line 1767
    .local v7, "internationalPrefixForFormatting":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 1768
    invoke-virtual {v9}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1769
    .local v6, "internationalPrefix":Ljava/lang/String;
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 1770
    invoke-virtual {v14, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v7, v6

    .line 1774
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1775
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v13

    .line 1777
    .local v13, "regionCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v8

    .line 1778
    .local v8, "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v14, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1780
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 1781
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

    .line 1782
    invoke-virtual {v14, v15, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 1772
    .end local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v8    # "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v13    # "regionCode":Ljava/lang/String;
    .restart local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1786
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    .restart local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v8    # "metadataForRegion":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v13    # "regionCode":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1787
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Trying to format number from invalid region "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". International formatting applied."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1792
    :cond_9
    sget-object v14, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public getAsYouTypeFormatter(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2722
    new-instance v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCountryCodeForRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2363
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2364
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or missing region code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2368
    const/4 v0, 0x0

    .line 2370
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
    .line 1946
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getExampleNumberForNonGeoEntity(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2072
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2073
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1

    .line 2078
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 2079
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2080
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2078
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 2082
    .local v0, "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZZ"

    invoke-virtual {p0, v4, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2093
    .end local v0    # "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :goto_1
    return-object v3

    .line 2085
    .restart local v0    # "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :catch_0
    move-exception v1

    .line 2086
    .local v1, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 2090
    .end local v0    # "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v1    # "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    :cond_1
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unknown country calling code provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2093
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getExampleNumberForType(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 9
    .param p1, "type"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2042
    .local v4, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 2043
    .local v3, "exampleNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v3, :cond_0

    .line 2060
    .end local v3    # "exampleNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4    # "regionCode":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2048
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2050
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v5

    .line 2049
    invoke-virtual {p0, v5, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2052
    .local v1, "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2053
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ZZ"

    invoke-virtual {p0, v5, v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 2055
    :catch_0
    move-exception v2

    .line 2056
    .local v2, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 2060
    .end local v0    # "countryCallingCode":I
    .end local v1    # "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v2    # "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getExampleNumberForType(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    const/4 v2, 0x0

    .line 2017
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2018
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unknown region code provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2029
    :cond_0
    :goto_0
    return-object v2

    .line 2021
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2023
    .local v0, "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2024
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2026
    :catch_0
    move-exception v1

    .line 2027
    .local v1, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInvalidExampleNumber(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 10
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1961
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1962
    sget-object v6, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid or unknown region code provided: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v4, v5

    .line 2002
    :cond_0
    :goto_0
    return-object v4

    .line 1969
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v6

    sget-object v7, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1971
    .local v0, "desc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v4, v5

    .line 1973
    goto :goto_0

    .line 1975
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    .line 1987
    .local v1, "exampleNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1988
    .local v3, "phoneNumberLength":I
    :goto_1
    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    .line 1990
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1992
    .local v2, "numberToTry":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 1993
    .local v4, "possiblyValidNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1989
    .end local v4    # "possiblyValidNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v2    # "numberToTry":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .line 2002
    goto :goto_0

    .line 1996
    .restart local v2    # "numberToTry":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public getLengthOfGeographicalAreaCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 6
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x0

    .line 805
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 806
    .local v1, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v3

    .line 811
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 815
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    .line 816
    .local v2, "type":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 817
    .local v0, "countryCallingCode":I
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v2, v4, :cond_3

    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 821
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 825
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 829
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v3

    goto :goto_0
.end method

.method public getLengthOfNationalDestinationCode(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 8
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 868
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 871
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 872
    .local v0, "copiedProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 873
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 878
    :goto_0
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->format(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, "numberGroups":[Ljava/lang/String;
    array-length v4, v3

    if-gt v4, v7, :cond_1

    .line 885
    const/4 v4, 0x0

    .line 899
    :goto_1
    return v4

    .line 875
    .end local v0    # "copiedProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .end local v2    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v3    # "numberGroups":[Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "copiedProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_0

    .line 888
    .restart local v2    # "nationalSignificantNumber":Ljava/lang/String;
    .restart local v3    # "numberGroups":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v5, :cond_2

    .line 894
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, "mobileToken":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 896
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v3, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    .line 899
    .end local v1    # "mobileToken":Ljava/lang/String;
    :cond_2
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1
.end method

.method getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2221
    const/4 v0, 0x0

    .line 2223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/google/android/libraries/phonenumbers/MetadataSource;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/phonenumbers/MetadataSource;->getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2213
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2214
    const/4 v0, 0x0

    .line 2216
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/google/android/libraries/phonenumbers/MetadataSource;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/phonenumbers/MetadataSource;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method public getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1809
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v2

    if-lez v2, :cond_0

    .line 1810
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v2

    new-array v1, v2, [C

    .line 1811
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1812
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    .end local v1    # "zeros":[C
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2404
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2405
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_2

    .line 2406
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing region code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") provided."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v1, v2

    .line 2422
    :cond_1
    :goto_0
    return-object v1

    .line 2412
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 2414
    .local v1, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 2415
    goto :goto_0

    .line 2417
    :cond_3
    if-eqz p2, :cond_1

    .line 2420
    const-string v2, "~"

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
    .line 2117
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2140
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2119
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2121
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2123
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2126
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2128
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2130
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2132
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2134
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2136
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2138
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2117
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
    .line 2151
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2152
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2153
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2154
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2157
    :goto_0
    return-object v3

    .line 2156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2157
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    goto :goto_0
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2340
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2341
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
    .locals 7
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2297
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2298
    .local v0, "countryCode":I
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2299
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 2300
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2301
    .local v1, "numberString":Ljava/lang/String;
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing/invalid country_code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2303
    const/4 v3, 0x0

    .line 2308
    .end local v1    # "numberString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2305
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2306
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 2308
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
    .line 2350
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2351
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
    .line 972
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
    .line 962
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedTypesForNonGeoEntity(I)Ljava/util/Set;
    .locals 5
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1047
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 1048
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown country calling code for a non-geographical entity provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1050
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1052
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportedTypesForRegion(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "regionCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown region code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1030
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 1033
    :goto_0
    return-object v1

    .line 1032
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1033
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public isAlphaNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2460
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2462
    const/4 v1, 0x0

    .line 2466
    :goto_0
    return v1

    .line 2464
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2465
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2466
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
    .line 2440
    .line 2442
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 2441
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2443
    .local v0, "mainMetadataForCallingCode":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2444
    const/4 v1, 0x0

    .line 2446
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isLeadingZeroPossible()Z

    move-result v1

    goto :goto_0
.end method

.method public isMobileNumberPortableRegion(Ljava/lang/String;)Z
    .locals 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 3518
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3519
    .local v0, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 3520
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown region code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3521
    const/4 v1, 0x0

    .line 3523
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isMobileNumberPortableRegion()Z

    move-result v1

    goto :goto_0
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNumberGeographical(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z
    .locals 2
    .param p1, "numberType"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .param p2, "countryCallingCode"    # I

    .prologue
    .line 1136
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 1138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1136
    :goto_0
    return v0

    .line 1138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberGeographical(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "phoneNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1125
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v0

    return v0
.end method

.method public isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 6
    .param p1, "firstNumberIn"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 3358
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3359
    .local v0, "firstNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 3361
    .local v2, "secondNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3362
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3363
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    .line 3391
    :goto_0
    return-object v4

    .line 3365
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 3366
    .local v1, "firstNumberCountryCode":I
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 3368
    .local v3, "secondNumberCountryCode":I
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 3369
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3370
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3371
    :cond_1
    if-ne v1, v3, :cond_2

    .line 3372
    invoke-direct {p0, v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3376
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3379
    :cond_2
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3383
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3385
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3386
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3388
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3389
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3391
    :cond_5
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method public isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 11
    .param p1, "firstNumber"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 3457
    :try_start_0
    const-string v0, "ZZ"

    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v9

    .line 3458
    .local v9, "secondNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v9}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3486
    .end local v9    # "secondNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v8

    .line 3459
    :catch_0
    move-exception v6

    .line 3460
    .local v6, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    invoke-virtual {v6}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_2

    .line 3464
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v7

    .line 3466
    .local v7, "firstNumberRegion":Ljava/lang/String;
    :try_start_1
    const-string v0, "ZZ"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3467
    invoke-virtual {p0, p2, v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    .line 3468
    .local v10, "secondNumberWithFirstNumberRegion":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v10}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v8

    .line 3469
    .local v8, "match":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v8, v0, :cond_0

    .line 3470
    sget-object v8, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3476
    .end local v8    # "match":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .end local v10    # "secondNumberWithFirstNumberRegion":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1
    new-instance v5, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v5}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3477
    .local v5, "secondNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3478
    invoke-virtual {p0, p1, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 3480
    .end local v5    # "secondNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v0

    .line 3486
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
    .line 3417
    :try_start_0
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v17

    .line 3418
    .local v17, "firstNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3440
    .end local v17    # "firstNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    return-object v3

    .line 3419
    :catch_0
    move-exception v15

    .line 3420
    .local v15, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    invoke-virtual {v15}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 3422
    :try_start_1
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v18

    .line 3423
    .local v18, "secondNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 3424
    .end local v18    # "secondNumberAsProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v16

    .line 3425
    .local v16, "e2":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 3427
    :try_start_2
    new-instance v8, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v8}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3428
    .local v8, "firstNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v14, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v14}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3429
    .local v14, "secondNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3430
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {v9 .. v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3431
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_2
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 3432
    .end local v8    # "firstNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .end local v14    # "secondNumberProto":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    :catch_2
    move-exception v3

    .line 3440
    .end local v16    # "e2":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    :cond_0
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method isNumberMatchingDesc(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 5
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 2230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2231
    .local v0, "actualLength":I
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v2

    .line 2232
    .local v2, "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2233
    const/4 v3, 0x0

    .line 2238
    :goto_0
    return v3

    .line 2235
    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    .line 2236
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 2237
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2238
    .local v1, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    goto :goto_0
.end method

.method public isPossibleNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2481
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    .line 2482
    .local v0, "result":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    .line 2682
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2684
    :goto_0
    return v1

    .line 2683
    :catch_0
    move-exception v0

    .line 2684
    .local v0, "e":Lcom/google/android/libraries/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPossibleNumberForType(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .locals 2
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "type"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    .line 2499
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    .line 2500
    .local v0, "result":Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPossibleNumberForTypeWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 5
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "type"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    .line 2644
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2645
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2652
    .local v0, "countryCode":I
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2653
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2658
    :goto_0
    return-object v4

    .line 2655
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 2657
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2658
    .local v1, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    goto :goto_0
.end method

.method public isPossibleNumberWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 1
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2613
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method public isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2253
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2254
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidNumberForRegion(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2274
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2275
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2276
    .local v1, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_0

    const-string v4, "001"

    .line 2277
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2278
    invoke-direct {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return v3

    .line 2283
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2284
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method maybeExtractCountryCode(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 14
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
    .line 2782
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    .line 2783
    const/4 v8, 0x0

    .line 2846
    :goto_0
    return v8

    .line 2785
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2787
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string v7, "NonMatch"

    .line 2788
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2789
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 2793
    :cond_1
    invoke-virtual {p0, v4, v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    .line 2794
    .local v1, "countryCodeSource":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_2

    .line 2795
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2797
    :cond_2
    sget-object v11, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v11, :cond_5

    .line 2798
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x2

    if-gt v11, v12, :cond_3

    .line 2799
    new-instance v11, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v12, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v13, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v11, v12, v13}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v11

    .line 2803
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v8

    .line 2804
    .local v8, "potentialCountryCode":I
    if-eqz v8, :cond_4

    .line 2805
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2811
    :cond_4
    new-instance v11, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v12, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v13, "Country calling code supplied was not recognised."

    invoke-direct {v11, v12, v13}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v11

    .line 2813
    .end local v8    # "potentialCountryCode":I
    :cond_5
    if-eqz p2, :cond_9

    .line 2817
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    .line 2818
    .local v2, "defaultCountryCode":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2819
    .local v3, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2820
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2821
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2822
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2823
    .local v9, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 2824
    .local v5, "generalDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v11, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    .line 2825
    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 2826
    .local v10, "validNumberPattern":Ljava/util/regex/Pattern;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v9, v0, v11}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2831
    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2832
    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_7

    .line 2833
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v11

    sget-object v12, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v11, v12, :cond_9

    .line 2835
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2836
    if-eqz p4, :cond_8

    .line 2837
    sget-object v11, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2839
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move v8, v2

    .line 2840
    goto/16 :goto_0

    .line 2845
    .end local v2    # "defaultCountryCode":I
    .end local v3    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v5    # "generalDesc":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v9    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v10    # "validNumberPattern":Ljava/util/regex/Pattern;
    :cond_9
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2846
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2977
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2980
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

    .line 2982
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 2983
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2986
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2987
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2992
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_1
    return-object v0

    .line 2982
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2992
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
    .line 2888
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2889
    sget-object v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 2902
    :goto_0
    return-object v2

    .line 2892
    :cond_0
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2893
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2894
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2896
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2897
    sget-object v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    .line 2900
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2901
    .local v0, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2902
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

    .line 2919
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2920
    .local v3, "numberLength":I
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    .line 2921
    .local v4, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 2965
    :cond_0
    :goto_0
    return v8

    .line 2926
    :cond_1
    iget-object v10, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v10, v4}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 2927
    .local v5, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2928
    iget-object v10, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    .line 2929
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2931
    .local v1, "nationalNumberRule":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 2935
    .local v0, "isViableOriginalNumber":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 2936
    .local v2, "numOfGroups":I
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v6

    .line 2937
    .local v6, "transformRule":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 2938
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 2940
    :cond_2
    if-eqz v0, :cond_3

    .line 2941
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2944
    :cond_3
    if-eqz p3, :cond_4

    if-lez v2, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 2945
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v8, v9

    .line 2948
    goto :goto_0

    .line 2952
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2953
    .local v7, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v3, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    if-eqz v0, :cond_6

    .line 2955
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2958
    :cond_6
    if-eqz p3, :cond_7

    if-le v2, v9, :cond_7

    .line 2959
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v8, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v9

    .line 2962
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
    .line 3040
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3041
    .local v0, "phoneNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3042
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
    .line 3051
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3052
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
    .line 3070
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3071
    .local v0, "phoneNumber":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3072
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

    .line 3082
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3083
    return-void
.end method

.method public truncateTooLongNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 6
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x1

    .line 2696
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2711
    :goto_0
    return v3

    .line 2699
    :cond_0
    new-instance v2, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2700
    .local v2, "numberCopy":Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2701
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    .line 2703
    .local v0, "nationalNumber":J
    :cond_1
    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    .line 2704
    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2705
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 2707
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2709
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2710
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0
.end method
