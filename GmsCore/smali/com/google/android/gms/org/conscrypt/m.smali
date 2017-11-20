.class final enum Lcom/google/android/gms/org/conscrypt/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum b:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum c:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum d:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum e:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum f:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum g:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum h:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum i:Lcom/google/android/gms/org/conscrypt/m;

.field public static final enum j:Lcom/google/android/gms/org/conscrypt/m;

.field private static final synthetic k:[Lcom/google/android/gms/org/conscrypt/m;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->a:Lcom/google/android/gms/org/conscrypt/m;

    .line 59
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "MODE_SET"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->b:Lcom/google/android/gms/org/conscrypt/m;

    .line 63
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "HANDSHAKE_WANTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->c:Lcom/google/android/gms/org/conscrypt/m;

    .line 67
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "HANDSHAKE_STARTED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->d:Lcom/google/android/gms/org/conscrypt/m;

    .line 71
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "HANDSHAKE_COMPLETED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->e:Lcom/google/android/gms/org/conscrypt/m;

    .line 77
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "READY_HANDSHAKE_CUT_THROUGH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->f:Lcom/google/android/gms/org/conscrypt/m;

    .line 81
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->g:Lcom/google/android/gms/org/conscrypt/m;

    .line 82
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "CLOSED_INBOUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->h:Lcom/google/android/gms/org/conscrypt/m;

    .line 83
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "CLOSED_OUTBOUND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->i:Lcom/google/android/gms/org/conscrypt/m;

    .line 87
    new-instance v0, Lcom/google/android/gms/org/conscrypt/m;

    const-string v1, "CLOSED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    .line 50
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/gms/org/conscrypt/m;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/m;->a:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/org/conscrypt/m;->b:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/org/conscrypt/m;->c:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/org/conscrypt/m;->d:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/org/conscrypt/m;->e:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->f:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->g:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->h:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->i:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/org/conscrypt/m;->k:[Lcom/google/android/gms/org/conscrypt/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/m;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/google/android/gms/org/conscrypt/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/m;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/org/conscrypt/m;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->k:[Lcom/google/android/gms/org/conscrypt/m;

    invoke-virtual {v0}, [Lcom/google/android/gms/org/conscrypt/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/org/conscrypt/m;

    return-object v0
.end method
