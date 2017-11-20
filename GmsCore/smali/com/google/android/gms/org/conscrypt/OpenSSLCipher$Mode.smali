.class public final enum Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CBC:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CFB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CFB1:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CFB128:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CFB8:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CTR:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum CTS:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum ECB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum OFB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum OFB128:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum OFB64:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field public static final enum PCBC:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "CBC"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 53
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "CFB"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "CFB1"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB1:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "CFB8"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB8:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "CFB128"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB128:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 54
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "CTR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 55
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "CTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CTS:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 56
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "ECB"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 57
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "OFB"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->OFB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "OFB64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->OFB64:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "OFB128"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->OFB128:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 58
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    const-string v1, "PCBC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->PCBC:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 51
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CBC:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB1:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB8:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CFB128:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CTR:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->CTS:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->OFB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->OFB64:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->OFB128:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->PCBC:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->$VALUES:[Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->$VALUES:[Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v0}, [Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    return-object v0
.end method
