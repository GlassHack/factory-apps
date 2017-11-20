.class Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$4$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$4;->verify(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$4;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$4;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$4$1;->this$0:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGroups(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "util"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    .param p2, "number"    # Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .param p3, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p4, "expectedNumberGroups"    # [Ljava/lang/String;

    .prologue
    .line 524
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;->allNumberGroupsAreExactlyPresent(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
