.class public final enum Lcom/google/android/gms/auth/firstparty/dataservice/az;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/auth/firstparty/dataservice/az;

.field public static final enum b:Lcom/google/android/gms/auth/firstparty/dataservice/az;

.field public static final enum c:Lcom/google/android/gms/auth/firstparty/dataservice/az;

.field private static final synthetic d:[Lcom/google/android/gms/auth/firstparty/dataservice/az;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;->a:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    .line 32
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;->b:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    .line 33
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;->c:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/auth/firstparty/dataservice/az;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/az;->a:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/az;->b:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/az;->c:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;->d:[Lcom/google/android/gms/auth/firstparty/dataservice/az;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/az;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/auth/firstparty/dataservice/az;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/az;->d:[Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/firstparty/dataservice/az;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/firstparty/dataservice/az;

    return-object v0
.end method
