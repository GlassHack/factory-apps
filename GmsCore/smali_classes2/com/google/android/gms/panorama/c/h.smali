.class public final enum Lcom/google/android/gms/panorama/c/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/panorama/c/h;

.field public static final enum b:Lcom/google/android/gms/panorama/c/h;

.field private static final synthetic c:[Lcom/google/android/gms/panorama/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/android/gms/panorama/c/h;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/panorama/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/panorama/c/h;->a:Lcom/google/android/gms/panorama/c/h;

    new-instance v0, Lcom/google/android/gms/panorama/c/h;

    const-string v1, "NearestNeighbor"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/panorama/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/panorama/c/h;->b:Lcom/google/android/gms/panorama/c/h;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/panorama/c/h;

    sget-object v1, Lcom/google/android/gms/panorama/c/h;->a:Lcom/google/android/gms/panorama/c/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/panorama/c/h;->b:Lcom/google/android/gms/panorama/c/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/panorama/c/h;->c:[Lcom/google/android/gms/panorama/c/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/panorama/c/h;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/gms/panorama/c/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/panorama/c/h;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/panorama/c/h;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gms/panorama/c/h;->c:[Lcom/google/android/gms/panorama/c/h;

    invoke-virtual {v0}, [Lcom/google/android/gms/panorama/c/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/panorama/c/h;

    return-object v0
.end method
