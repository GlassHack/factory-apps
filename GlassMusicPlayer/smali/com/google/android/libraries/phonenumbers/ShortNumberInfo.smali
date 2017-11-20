.class public Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;

.field private static final c:Ljava/util/Set;


# instance fields
.field private final d:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;->a:Ljava/util/logging/Logger;

    .line 42
    new-instance v0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;

    invoke-static {}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a()Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;-><init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)V

    sput-object v0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;->b:Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    .line 50
    sget-object v0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    const-string v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    const-string v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    const-string v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/ShortNumberInfo;->d:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    .line 73
    return-void
.end method
