.class public final Lcom/google/android/gms/org/conscrypt/util/EmptyArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOOLEAN:[Z

.field public static final BYTE:[B

.field public static final CHAR:[C

.field public static final CLASS:[Ljava/lang/Class;

.field public static final DOUBLE:[D

.field public static final INT:[I

.field public static final OBJECT:[Ljava/lang/Object;

.field public static final STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field public static final STRING:[Ljava/lang/String;

.field public static final THROWABLE:[Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BOOLEAN:[Z

    .line 25
    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    .line 26
    new-array v0, v1, [C

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->CHAR:[C

    .line 27
    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->DOUBLE:[D

    .line 28
    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->INT:[I

    .line 30
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 31
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 32
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 33
    new-array v0, v1, [Ljava/lang/Throwable;

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    .line 34
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
