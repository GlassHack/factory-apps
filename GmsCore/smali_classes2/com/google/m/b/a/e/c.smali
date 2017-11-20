.class public final enum Lcom/google/m/b/a/e/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/m/b/a/e/c;

.field public static final enum b:Lcom/google/m/b/a/e/c;

.field public static final enum c:Lcom/google/m/b/a/e/c;

.field private static final synthetic g:[Lcom/google/m/b/a/e/c;


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 39
    new-instance v0, Lcom/google/m/b/a/e/c;

    const-string v1, "HMAC_SHA256"

    const-string v4, "HmacSHA256"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/m/b/a/e/c;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    .line 40
    new-instance v4, Lcom/google/m/b/a/e/c;

    const-string v5, "ECDSA_P256_SHA256"

    const-string v8, "SHA256withECDSA"

    move v6, v3

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/m/b/a/e/c;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v4, Lcom/google/m/b/a/e/c;->b:Lcom/google/m/b/a/e/c;

    .line 41
    new-instance v5, Lcom/google/m/b/a/e/c;

    const-string v6, "RSA2048_SHA256"

    const-string v9, "SHA256withRSA"

    move v8, v11

    move v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/m/b/a/e/c;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v5, Lcom/google/m/b/a/e/c;->c:Lcom/google/m/b/a/e/c;

    .line 38
    new-array v0, v11, [Lcom/google/m/b/a/e/c;

    sget-object v1, Lcom/google/m/b/a/e/c;->a:Lcom/google/m/b/a/e/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/m/b/a/e/c;->b:Lcom/google/m/b/a/e/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/m/b/a/e/c;->c:Lcom/google/m/b/a/e/c;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/m/b/a/e/c;->g:[Lcom/google/m/b/a/e/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/google/m/b/a/e/c;->d:I

    .line 70
    iput-object p4, p0, Lcom/google/m/b/a/e/c;->e:Ljava/lang/String;

    .line 71
    iput-boolean p5, p0, Lcom/google/m/b/a/e/c;->f:Z

    .line 72
    return-void
.end method

.method public static a(I)Lcom/google/m/b/a/e/c;
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Lcom/google/m/b/a/e/c;->values()[Lcom/google/m/b/a/e/c;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 57
    iget v4, v3, Lcom/google/m/b/a/e/c;->d:I

    if-ne v4, p0, :cond_0

    .line 58
    return-object v3

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported SigType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/m/b/a/e/c;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/m/b/a/e/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/e/c;

    return-object v0
.end method

.method public static values()[Lcom/google/m/b/a/e/c;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/m/b/a/e/c;->g:[Lcom/google/m/b/a/e/c;

    invoke-virtual {v0}, [Lcom/google/m/b/a/e/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/m/b/a/e/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/m/b/a/e/c;->d:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/m/b/a/e/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/m/b/a/e/c;->f:Z

    return v0
.end method
