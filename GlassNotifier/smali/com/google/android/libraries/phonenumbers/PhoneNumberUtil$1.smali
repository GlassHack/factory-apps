.class Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/libraries/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

.field final synthetic val$defaultRegion:Ljava/lang/String;

.field final synthetic val$leniency:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;

.field final synthetic val$maxTries:J

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    .prologue
    .line 3117
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->this$0:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    iput-object p2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->val$text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->val$defaultRegion:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->val$leniency:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;

    iput-wide p5, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->val$maxTries:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/libraries/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3120
    new-instance v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;

    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->this$0:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->val$text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->val$defaultRegion:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->val$leniency:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;

    iget-wide v6, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$1;->val$maxTries:J

    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/phonenumbers/PhoneNumberMatcher;-><init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v1
.end method
