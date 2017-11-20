.class public final enum Lcom/google/android/gms/fitness/b/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/fitness/b/h;

.field public static final enum b:Lcom/google/android/gms/fitness/b/h;

.field private static final synthetic c:[Lcom/google/android/gms/fitness/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/android/gms/fitness/b/h;

    const-string v1, "DERIVED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    new-instance v0, Lcom/google/android/gms/fitness/b/h;

    const-string v1, "RAW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/fitness/b/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/b/h;->b:Lcom/google/android/gms/fitness/b/h;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/fitness/b/h;

    sget-object v1, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/fitness/b/h;->b:Lcom/google/android/gms/fitness/b/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/fitness/b/h;->c:[Lcom/google/android/gms/fitness/b/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/h;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/gms/fitness/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/h;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/fitness/b/h;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/fitness/b/h;->c:[Lcom/google/android/gms/fitness/b/h;

    invoke-virtual {v0}, [Lcom/google/android/gms/fitness/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fitness/b/h;

    return-object v0
.end method
