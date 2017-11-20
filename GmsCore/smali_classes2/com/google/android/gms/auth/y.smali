.class public final enum Lcom/google/android/gms/auth/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/auth/y;

.field public static final enum b:Lcom/google/android/gms/auth/y;

.field private static final synthetic c:[Lcom/google/android/gms/auth/y;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    new-instance v0, Lcom/google/android/gms/auth/y;

    const-string v1, "ACCOUNT_LEVEL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/y;->a:Lcom/google/android/gms/auth/y;

    new-instance v0, Lcom/google/android/gms/auth/y;

    const-string v1, "SCOPE_LEVEL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/auth/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/y;->b:Lcom/google/android/gms/auth/y;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/auth/y;

    sget-object v1, Lcom/google/android/gms/auth/y;->a:Lcom/google/android/gms/auth/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/auth/y;->b:Lcom/google/android/gms/auth/y;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/auth/y;->c:[Lcom/google/android/gms/auth/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/y;
    .locals 1

    .prologue
    .line 335
    const-class v0, Lcom/google/android/gms/auth/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/y;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/auth/y;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/google/android/gms/auth/y;->c:[Lcom/google/android/gms/auth/y;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/y;

    return-object v0
.end method
