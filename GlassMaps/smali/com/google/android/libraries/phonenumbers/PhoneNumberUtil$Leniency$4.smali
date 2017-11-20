.class final enum Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$4;
.super Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/g;)V

    return-void
.end method


# virtual methods
.method final verify(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p3, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    :cond_0
    const/4 v0, 0x0

    .line 519
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/google/android/libraries/phonenumbers/j;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/phonenumbers/j;-><init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$4;)V

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/f;)Z

    move-result v0

    goto :goto_0
.end method
