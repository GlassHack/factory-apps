.class public Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PLACEHOLDER:Ljava/lang/String; = "\u2008"

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMPTY_METADATA:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_BEFORE_NATIONAL_NUMBER:C = ' '

.field private static final STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

.field private extractedNationalPrefix:Ljava/lang/String;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private inputHasFormatting:Z

.field private isCompleteNumber:Z

.field private isExpectingCountryCallingCode:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private originalPosition:I

.field private final phoneUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

.field private shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 71
    const-string v0, "\\[([^\\[\\]])*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    const-string v0, "\\d(?=[^,}][^,}])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "[- ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 99
    const-string/jumbo v0, "\u2008"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 56
    iput-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 57
    iput-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 58
    invoke-static {}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    .line 100
    iput v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 103
    iput v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 106
    iput v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 111
    iput-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/google/android/libraries/phonenumbers/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/android/libraries/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    .line 128
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 130
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 131
    return-void
.end method

.method private ableToExtractLongerNdd()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 404
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 411
    .local v0, "indexOfPreviousNdd":I
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 413
    .end local v0    # "indexOfPreviousNdd":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "nationalNumber"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x20

    .line 465
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 466
    .local v0, "prefixBeforeNationalNumberLength":I
    iget-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_0

    .line 472
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 488
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 496
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 494
    .restart local v0    # "formattedNumber":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 496
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 392
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 593
    iget-object v5, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v4

    .line 596
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v3, "numberWithoutCountryCallingCode":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    iget-object v6, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 598
    .local v0, "countryCode":I
    if-eqz v0, :cond_0

    .line 601
    iget-object v5, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 602
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "newRegionCode":Ljava/lang/String;
    const-string v4, "001"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 605
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 609
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "countryCodeString":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    const-string v4, ""

    iput-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 614
    const/4 v4, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "countryCodeString":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 607
    invoke-direct {p0, v2}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_1
.end method

.method private attemptToExtractIdd()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 565
    iget-object v6, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    const-string v3, "\\+|"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v6, v3}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 568
    .local v1, "internationalPrefix":Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 569
    .local v0, "iddMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    iput-boolean v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 571
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 572
    .local v2, "startOfCountryCallingCode":I
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 573
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 575
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_0

    .line 578
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    move v3, v4

    .line 582
    .end local v2    # "startOfCountryCallingCode":I
    :goto_1
    return v3

    .line 565
    .end local v0    # "iddMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "internationalPrefix":Ljava/util/regex/Pattern;
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "iddMatcher":Ljava/util/regex/Matcher;
    .restart local v1    # "internationalPrefix":Ljava/util/regex/Pattern;
    :cond_2
    move v3, v5

    .line 582
    goto :goto_1
.end method

.method private createFormattingTemplate(Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)Z
    .locals 5
    .param p1, "format"    # Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "numberPattern":Ljava/lang/String;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v2

    .line 228
    :cond_1
    sget-object v3, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\\\d"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v3, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\\\d"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 233
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "tempTemplate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 235
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .locals 5
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-boolean v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v3

    .line 181
    .local v3, "nationalPrefixIsUsedByCountry":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 182
    .local v0, "format":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isFormatEligible(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    .end local v0    # "format":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .end local v1    # "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "nationalPrefixIsUsedByCountry":Z
    :cond_2
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 191
    .restart local v1    # "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "nationalPrefixIsUsedByCountry":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "numberPattern"    # Ljava/lang/String;
    .param p2, "numberFormat"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v1, "999999999999999"

    .line 247
    .local v1, "longestPhoneNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v4, p1}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 248
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 249
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "aPhoneNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 253
    const-string v3, ""

    .line 259
    :goto_0
    return-object v3

    .line 256
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "template":Ljava/lang/String;
    const-string v4, "9"

    const-string/jumbo v5, "\u2008"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    goto :goto_0
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "countryCallingCode":I
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "mainCountry":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 139
    .local v2, "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    .line 144
    .end local v2    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    :goto_0
    return-object v2

    .restart local v2    # "metadata":Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_0
    sget-object v2, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 505
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 506
    .local v1, "lengthOfNationalNumber":I
    if-lez v1, :cond_2

    .line 507
    const-string v2, ""

    .line 508
    .local v2, "tempNationalNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 509
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v2

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    .end local v0    # "i":I
    .end local v2    # "tempNationalNumber":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 511
    .restart local v0    # "i":I
    .restart local v2    # "tempNationalNumber":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 513
    .end local v0    # "i":I
    .end local v2    # "tempNationalNumber":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .locals 5
    .param p1, "nextChar"    # C

    .prologue
    const/4 v4, 0x0

    .line 640
    sget-object v2, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 641
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    iget v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "tempTemplate":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 645
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 653
    .end local v1    # "tempTemplate":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 650
    iput-boolean v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 652
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 653
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .locals 7
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    if-eqz p2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 321
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 322
    iput-boolean v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 323
    iput-boolean v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 327
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v2, :cond_6

    .line 331
    iget-boolean v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz v2, :cond_3

    .line 332
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_1
    :goto_1
    return-object v0

    .line 325
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    goto :goto_0

    .line 333
    :cond_3
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 334
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 335
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 337
    :cond_4
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 344
    :cond_5
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 349
    :cond_6
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 362
    :goto_2
    iget-boolean v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz v2, :cond_9

    .line 363
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 364
    iput-boolean v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 366
    :cond_7
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 353
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 355
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 356
    iput-boolean v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    goto :goto_2

    .line 358
    :cond_8
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 359
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 368
    :cond_9
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "tempNationalNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 378
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 380
    :cond_a
    iget-boolean v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_b

    invoke-direct {p0, v1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 384
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "tempNationalNumber":Ljava/lang/String;
    :cond_c
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    const/4 v0, 0x1

    .line 417
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFormatEligible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private isNanpaNumberWithNationalPrefix()Z
    .locals 5

    .prologue
    const/16 v4, 0x31

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 526
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private maybeCreateNewTemplate()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 152
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 154
    .local v1, "numberFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "pattern":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    .end local v1    # "numberFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "pattern":Ljava/lang/String;
    :goto_1
    return v3

    .line 158
    .restart local v1    # "numberFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->createFormattingTemplate(Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    iput-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 160
    sget-object v4, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 165
    iput v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 166
    const/4 v3, 0x1

    goto :goto_1

    .line 168
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 171
    .end local v1    # "numberFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_2
    iput-boolean v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    goto :goto_1
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .locals 8
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x3

    .line 200
    .local v1, "indexOfLeadingDigitsPattern":I
    iget-object v6, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 201
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 203
    .local v0, "format":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v6

    if-eqz v6, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 209
    .local v3, "lastLeadingDigitsPattern":I
    iget-object v6, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 211
    .local v4, "leadingDigitsPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 212
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_0

    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 216
    .end local v0    # "format":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "lastLeadingDigitsPattern":I
    .end local v4    # "leadingDigitsPattern":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_1
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .locals 3
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .prologue
    .line 624
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_1

    .line 625
    move v0, p1

    .line 626
    .local v0, "normalizedChar":C
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    :goto_0
    if-eqz p2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 636
    :cond_0
    return v0

    .line 628
    .end local v0    # "normalizedChar":C
    :cond_1
    const/16 v1, 0xa

    .line 629
    .local v1, "radix":I
    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 630
    .restart local v0    # "normalizedChar":C
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 532
    const/4 v3, 0x0

    .line 533
    .local v3, "startOfNationalNumber":I
    invoke-direct {p0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    const/4 v3, 0x1

    .line 535
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    iput-boolean v7, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 552
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "nationalPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 554
    return-object v1

    .line 537
    .end local v1    # "nationalPrefix":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    iget-object v5, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 540
    .local v2, "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 543
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    if-lez v4, :cond_0

    .line 547
    iput-boolean v7, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 548
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 549
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .locals 6

    .prologue
    .line 427
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 428
    .local v3, "numberFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/google/android/libraries/phonenumbers/RegexCache;

    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 429
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    sget-object v4, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 433
    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 437
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "numberFormat":Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    :goto_0
    return-object v4

    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 269
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    iput v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 271
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 273
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 276
    iput-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 277
    iput v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 278
    iput v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 279
    iput-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 280
    iput-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 281
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 282
    iput-boolean v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 283
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 286
    :cond_0
    return-void
.end method

.method getExtractedNationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRememberedPosition()I
    .locals 4

    .prologue
    .line 445
    iget-boolean v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v2, :cond_1

    .line 446
    iget v1, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 456
    :cond_0
    return v1

    .line 448
    :cond_1
    const/4 v0, 0x0

    .local v0, "accruedInputIndex":I
    const/4 v1, 0x0

    .line 449
    .local v1, "currentOutputIndex":I
    :goto_0
    iget v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 452
    add-int/lit8 v0, v0, 0x1

    .line 454
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public inputDigit(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method
