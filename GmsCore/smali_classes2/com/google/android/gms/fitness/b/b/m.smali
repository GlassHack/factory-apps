.class abstract enum Lcom/google/android/gms/fitness/b/b/m;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/y;


# static fields
.field public static final enum a:Lcom/google/android/gms/fitness/b/b/m;

.field public static final enum b:Lcom/google/android/gms/fitness/b/b/m;

.field private static final synthetic c:[Lcom/google/android/gms/fitness/b/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 508
    new-instance v0, Lcom/google/android/gms/fitness/b/b/n;

    const-string v1, "KEY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/b/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/b/b/m;->a:Lcom/google/android/gms/fitness/b/b/m;

    .line 514
    new-instance v0, Lcom/google/android/gms/fitness/b/b/o;

    const-string v1, "VALUE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/b/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/b/b/m;->b:Lcom/google/android/gms/fitness/b/b/m;

    .line 507
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/fitness/b/b/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/fitness/b/b/m;->a:Lcom/google/android/gms/fitness/b/b/m;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/fitness/b/b/m;->b:Lcom/google/android/gms/fitness/b/b/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/fitness/b/b/m;->c:[Lcom/google/android/gms/fitness/b/b/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/b/b/m;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/b/m;
    .locals 1

    .prologue
    .line 507
    const-class v0, Lcom/google/android/gms/fitness/b/b/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/m;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/fitness/b/b/m;
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lcom/google/android/gms/fitness/b/b/m;->c:[Lcom/google/android/gms/fitness/b/b/m;

    invoke-virtual {v0}, [Lcom/google/android/gms/fitness/b/b/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fitness/b/b/m;

    return-object v0
.end method
