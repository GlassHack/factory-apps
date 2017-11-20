.class public final enum Lcom/google/android/gms/fitness/d/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/gms/fitness/d/b;

.field public static final enum b:Lcom/google/android/gms/fitness/d/b;

.field private static final synthetic d:[Lcom/google/android/gms/fitness/d/b;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/google/android/gms/fitness/d/b;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/d/b;->a:Lcom/google/android/gms/fitness/d/b;

    .line 27
    new-instance v0, Lcom/google/android/gms/fitness/d/b;

    const-string v1, "DETAILED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/fitness/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/fitness/d/b;->b:Lcom/google/android/gms/fitness/d/b;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/fitness/d/b;

    sget-object v1, Lcom/google/android/gms/fitness/d/b;->a:Lcom/google/android/gms/fitness/d/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/fitness/d/b;->b:Lcom/google/android/gms/fitness/d/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/fitness/d/b;->d:[Lcom/google/android/gms/fitness/d/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.google.fitness.activity."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/d/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/d/b;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fitness/d/b;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/gms/fitness/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/b;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/fitness/d/b;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gms/fitness/d/b;->d:[Lcom/google/android/gms/fitness/d/b;

    invoke-virtual {v0}, [Lcom/google/android/gms/fitness/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fitness/d/b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/fitness/d/b;->c:Ljava/lang/String;

    return-object v0
.end method
