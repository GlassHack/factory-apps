.class public final enum Lcom/google/m/b/a/e/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/m/b/a/e/b;

.field public static final enum b:Lcom/google/m/b/a/e/b;

.field private static final synthetic e:[Lcom/google/m/b/a/e/b;


# instance fields
.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    new-instance v0, Lcom/google/m/b/a/e/b;

    const-string v1, "NONE"

    const-string v2, "InvalidDoNotUseForJCA"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/google/m/b/a/e/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    .line 84
    new-instance v0, Lcom/google/m/b/a/e/b;

    const-string v1, "AES_256_CBC"

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/google/m/b/a/e/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    .line 82
    new-array v0, v5, [Lcom/google/m/b/a/e/b;

    sget-object v1, Lcom/google/m/b/a/e/b;->a:Lcom/google/m/b/a/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/m/b/a/e/b;->b:Lcom/google/m/b/a/e/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/m/b/a/e/b;->e:[Lcom/google/m/b/a/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/google/m/b/a/e/b;->c:I

    .line 108
    iput-object p4, p0, Lcom/google/m/b/a/e/b;->d:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static a(I)Lcom/google/m/b/a/e/b;
    .locals 5

    .prologue
    .line 95
    invoke-static {}, Lcom/google/m/b/a/e/b;->values()[Lcom/google/m/b/a/e/b;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 96
    iget v4, v3, Lcom/google/m/b/a/e/b;->c:I

    if-ne v4, p0, :cond_0

    .line 97
    return-object v3

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported EncType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/m/b/a/e/b;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/m/b/a/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/e/b;

    return-object v0
.end method

.method public static values()[Lcom/google/m/b/a/e/b;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/m/b/a/e/b;->e:[Lcom/google/m/b/a/e/b;

    invoke-virtual {v0}, [Lcom/google/m/b/a/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/m/b/a/e/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/m/b/a/e/b;->c:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/m/b/a/e/b;->d:Ljava/lang/String;

    return-object v0
.end method
