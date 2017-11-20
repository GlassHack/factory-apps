.class final enum Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$2;
.super Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .param p1, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "util"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 460
    invoke-virtual {p3, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->containsOnlyValidXChars(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    goto :goto_0
.end method
