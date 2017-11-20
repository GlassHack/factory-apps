.class final enum Lcom/google/android/gms/org/conscrypt/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/org/conscrypt/u;

.field public static final enum b:Lcom/google/android/gms/org/conscrypt/u;

.field private static final synthetic d:[Lcom/google/android/gms/org/conscrypt/u;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/google/android/gms/org/conscrypt/u;

    const-string v1, "PKI_PATH"

    const-string v2, "PkiPath"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/org/conscrypt/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/u;->a:Lcom/google/android/gms/org/conscrypt/u;

    .line 47
    new-instance v0, Lcom/google/android/gms/org/conscrypt/u;

    const-string v1, "PKCS7"

    const-string v2, "PKCS7"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/org/conscrypt/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/u;->b:Lcom/google/android/gms/org/conscrypt/u;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/org/conscrypt/u;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/u;->a:Lcom/google/android/gms/org/conscrypt/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/org/conscrypt/u;->b:Lcom/google/android/gms/org/conscrypt/u;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/org/conscrypt/u;->d:[Lcom/google/android/gms/org/conscrypt/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/u;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/u;
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/u;->values()[Lcom/google/android/gms/org/conscrypt/u;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 57
    iget-object v4, v0, Lcom/google/android/gms/org/conscrypt/u;->c:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    :goto_1
    return-object v0

    .line 56
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/org/conscrypt/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/u;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/android/gms/org/conscrypt/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/u;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/org/conscrypt/u;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gms/org/conscrypt/u;->d:[Lcom/google/android/gms/org/conscrypt/u;

    invoke-virtual {v0}, [Lcom/google/android/gms/org/conscrypt/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/org/conscrypt/u;

    return-object v0
.end method
