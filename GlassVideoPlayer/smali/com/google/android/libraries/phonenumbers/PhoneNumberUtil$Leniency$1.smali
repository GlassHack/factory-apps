.class final enum Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$1;
.super Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/g;)V

    return-void
.end method


# virtual methods
.method final verify(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p3, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    return v0
.end method
