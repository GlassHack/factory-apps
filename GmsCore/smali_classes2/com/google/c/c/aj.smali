.class public final enum Lcom/google/c/c/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/c/c/aj;

.field public static final enum b:Lcom/google/c/c/aj;

.field private static final synthetic c:[Lcom/google/c/c/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/google/c/c/aj;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/google/c/c/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/c/aj;->a:Lcom/google/c/c/aj;

    .line 38
    new-instance v0, Lcom/google/c/c/aj;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v3}, Lcom/google/c/c/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/c/c/aj;->b:Lcom/google/c/c/aj;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/c/c/aj;

    sget-object v1, Lcom/google/c/c/aj;->a:Lcom/google/c/c/aj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/c/c/aj;->b:Lcom/google/c/c/aj;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/c/c/aj;->c:[Lcom/google/c/c/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/c/c/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/aj;

    return-object v0
.end method

.method public static values()[Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/c/c/aj;->c:[Lcom/google/c/c/aj;

    invoke-virtual {v0}, [Lcom/google/c/c/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/c/aj;

    return-object v0
.end method
