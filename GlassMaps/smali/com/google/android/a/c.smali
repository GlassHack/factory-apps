.class final Lcom/google/android/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[Z

.field static final b:[I

.field static final c:[J

.field static final d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/a/c;->a:[Z

    .line 21
    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/a/c;->b:[I

    .line 22
    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/a/c;->c:[J

    .line 23
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/a/c;->d:[Ljava/lang/Object;

    return-void
.end method

.method static a([III)I
    .locals 4

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    add-int/lit8 v0, p1, -0x1

    .line 30
    :goto_0
    if-gt v1, v0, :cond_2

    .line 31
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 32
    aget v3, p0, v2

    .line 34
    if-ge v3, p2, :cond_0

    .line 35
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    if-le v3, p2, :cond_1

    .line 37
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 42
    :goto_1
    return v0

    :cond_2
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method
