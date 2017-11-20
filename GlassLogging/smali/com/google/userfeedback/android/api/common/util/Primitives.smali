.class public Lcom/google/userfeedback/android/api/common/util/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/common/util/Primitives$1;,
        Lcom/google/userfeedback/android/api/common/util/Primitives$J2meConverter;,
        Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;
    }
.end annotation


# static fields
.field private static converter:Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/google/userfeedback/android/api/common/util/Primitives;->resetConverter()V

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static injectConverter(Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;)V
    .locals 0
    .param p0, "c"    # Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;

    .prologue
    .line 77
    sput-object p0, Lcom/google/userfeedback/android/api/common/util/Primitives;->converter:Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;

    .line 78
    return-void
.end method

.method static resetConverter()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/google/userfeedback/android/api/common/util/Primitives$J2meConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/common/util/Primitives$J2meConverter;-><init>(Lcom/google/userfeedback/android/api/common/util/Primitives$1;)V

    sput-object v0, Lcom/google/userfeedback/android/api/common/util/Primitives;->converter:Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;

    .line 87
    return-void
.end method

.method public static toInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 101
    sget-object v0, Lcom/google/userfeedback/android/api/common/util/Primitives;->converter:Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;

    invoke-virtual {v0, p0}, Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static toLong(J)Ljava/lang/Long;
    .locals 1
    .param p0, "l"    # J

    .prologue
    .line 94
    sget-object v0, Lcom/google/userfeedback/android/api/common/util/Primitives;->converter:Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;

    invoke-virtual {v0, p0, p1}, Lcom/google/userfeedback/android/api/common/util/Primitives$PrimitiveConverter;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
