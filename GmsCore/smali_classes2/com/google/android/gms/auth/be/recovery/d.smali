.class public final enum Lcom/google/android/gms/auth/be/recovery/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/auth/be/recovery/d;

.field public static final enum b:Lcom/google/android/gms/auth/be/recovery/d;

.field public static final enum c:Lcom/google/android/gms/auth/be/recovery/d;

.field private static final synthetic d:[Lcom/google/android/gms/auth/be/recovery/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/google/android/gms/auth/be/recovery/d;

    const-string v1, "EMAIL_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/be/recovery/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/be/recovery/d;->a:Lcom/google/android/gms/auth/be/recovery/d;

    new-instance v0, Lcom/google/android/gms/auth/be/recovery/d;

    const-string v1, "PHONE_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/auth/be/recovery/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/be/recovery/d;->b:Lcom/google/android/gms/auth/be/recovery/d;

    new-instance v0, Lcom/google/android/gms/auth/be/recovery/d;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/auth/be/recovery/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/be/recovery/d;->c:Lcom/google/android/gms/auth/be/recovery/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/auth/be/recovery/d;

    sget-object v1, Lcom/google/android/gms/auth/be/recovery/d;->a:Lcom/google/android/gms/auth/be/recovery/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/auth/be/recovery/d;->b:Lcom/google/android/gms/auth/be/recovery/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/auth/be/recovery/d;->c:Lcom/google/android/gms/auth/be/recovery/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/auth/be/recovery/d;->d:[Lcom/google/android/gms/auth/be/recovery/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/be/recovery/d;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/gms/auth/be/recovery/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/recovery/d;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/auth/be/recovery/d;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/gms/auth/be/recovery/d;->d:[Lcom/google/android/gms/auth/be/recovery/d;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/be/recovery/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/be/recovery/d;

    return-object v0
.end method
