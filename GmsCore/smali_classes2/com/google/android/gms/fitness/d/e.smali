.class public final enum Lcom/google/android/gms/fitness/d/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/fitness/d/e;

.field public static final enum b:Lcom/google/android/gms/fitness/d/e;

.field public static final enum c:Lcom/google/android/gms/fitness/d/e;

.field private static final synthetic e:[Lcom/google/android/gms/fitness/d/e;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13
    new-instance v0, Lcom/google/android/gms/fitness/d/e;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/fitness/d/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    .line 18
    new-instance v0, Lcom/google/android/gms/fitness/d/e;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/d/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/fitness/d/e;->b:Lcom/google/android/gms/fitness/d/e;

    .line 23
    new-instance v0, Lcom/google/android/gms/fitness/d/e;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/gms/fitness/d/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    .line 9
    new-array v0, v5, [Lcom/google/android/gms/fitness/d/e;

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->a:Lcom/google/android/gms/fitness/d/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->b:Lcom/google/android/gms/fitness/d/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/fitness/d/e;->c:Lcom/google/android/gms/fitness/d/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/fitness/d/e;->e:[Lcom/google/android/gms/fitness/d/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/android/gms/fitness/d/e;->d:I

    .line 29
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/fitness/d/e;
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/google/android/gms/fitness/d/e;->values()[Lcom/google/android/gms/fitness/d/e;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 37
    iget v4, v3, Lcom/google/android/gms/fitness/d/e;->d:I

    if-ne v4, p0, :cond_0

    .line 38
    return-object v3

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad Realm value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fitness/d/e;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/google/android/gms/fitness/d/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/e;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/fitness/d/e;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/android/gms/fitness/d/e;->e:[Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v0}, [Lcom/google/android/gms/fitness/d/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fitness/d/e;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/gms/fitness/d/e;->d:I

    return v0
.end method
