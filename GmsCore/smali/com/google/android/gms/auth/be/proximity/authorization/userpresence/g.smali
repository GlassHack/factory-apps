.class final enum Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

.field public static final enum b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

.field public static final enum c:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

.field public static final enum d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

.field private static final synthetic e:[Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    const-string v1, "DEVICE_SCREEN_ON"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    .line 48
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    const-string v1, "DEVICE_SCREEN_OFF"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    .line 49
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    const-string v1, "DEVICE_USER_PRESENT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->c:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    .line 50
    new-instance v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    const-string v1, "PERIODIC_CHECK"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->a:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->b:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->c:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->d:Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->e:[Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->e:[Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/be/proximity/authorization/userpresence/g;

    return-object v0
.end method
