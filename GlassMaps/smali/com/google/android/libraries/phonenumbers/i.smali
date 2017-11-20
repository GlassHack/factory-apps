.class final Lcom/google/android/libraries/phonenumbers/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/phonenumbers/f;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$3;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$3;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/i;->a:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 493
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
