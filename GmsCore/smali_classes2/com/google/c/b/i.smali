.class final enum Lcom/google/c/b/i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/bs;


# static fields
.field public static final enum a:Lcom/google/c/b/i;

.field private static final synthetic b:[Lcom/google/c/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/google/c/b/i;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/c/b/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/b/i;->a:Lcom/google/c/b/i;

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/c/b/i;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/b/i;->a:Lcom/google/c/b/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/b/i;->b:[Lcom/google/c/b/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/b/i;
    .locals 1

    .prologue
    .line 174
    const-class v0, Lcom/google/c/b/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/b/i;

    return-object v0
.end method

.method public static values()[Lcom/google/c/b/i;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/google/c/b/i;->b:[Lcom/google/c/b/i;

    invoke-virtual {v0}, [Lcom/google/c/b/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/b/i;

    return-object v0
.end method
