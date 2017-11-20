.class public final enum Lcom/google/android/location/f/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/f/w;

.field public static final enum b:Lcom/google/android/location/f/w;

.field public static final enum c:Lcom/google/android/location/f/w;

.field public static final enum d:Lcom/google/android/location/f/w;

.field private static final synthetic f:[Lcom/google/android/location/f/w;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 20
    new-instance v0, Lcom/google/android/location/f/w;

    const-string v1, "Requests"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/location/f/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/location/f/w;->a:Lcom/google/android/location/f/w;

    .line 21
    new-instance v0, Lcom/google/android/location/f/w;

    const-string v1, "Results"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/f/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/location/f/w;->b:Lcom/google/android/location/f/w;

    .line 22
    new-instance v0, Lcom/google/android/location/f/w;

    const-string v1, "FromCachedData"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/location/f/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/location/f/w;->c:Lcom/google/android/location/f/w;

    .line 23
    new-instance v0, Lcom/google/android/location/f/w;

    const-string v1, "Jumps"

    invoke-direct {v0, v1, v4, v6}, Lcom/google/android/location/f/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/location/f/w;->d:Lcom/google/android/location/f/w;

    .line 19
    new-array v0, v6, [Lcom/google/android/location/f/w;

    sget-object v1, Lcom/google/android/location/f/w;->a:Lcom/google/android/location/f/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/f/w;->b:Lcom/google/android/location/f/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/f/w;->c:Lcom/google/android/location/f/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/f/w;->d:Lcom/google/android/location/f/w;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/location/f/w;->f:[Lcom/google/android/location/f/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/android/location/f/w;->e:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/f/w;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/location/f/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/w;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/f/w;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/location/f/w;->f:[Lcom/google/android/location/f/w;

    invoke-virtual {v0}, [Lcom/google/android/location/f/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/f/w;

    return-object v0
.end method
